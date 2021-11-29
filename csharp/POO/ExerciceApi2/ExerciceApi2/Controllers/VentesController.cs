using AutoMapper;
using ExerciceApi2.Data.Dtos;
using ExerciceApi2.Data.Models;
using ExerciceApi2.Data.Profiles;
using ExerciceApi2.Data.Services;
using ExerciceApi2.Helpers;

using Microsoft.AspNetCore.Mvc;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;


namespace ExerciceApi2.Controllers
{
    [Route("api/Ventes")]
    [ApiController]
    public class VentesController : ControllerBase
    {

        private readonly VentesService _service;
        private readonly IMapper _mapper;
        public VentesController(VentesService service, IMapper mapper)
        {
            _service = service;
            _mapper = mapper;
        }

        [HttpGet]
        public ActionResult<IEnumerable<VentesDTO>> GetAllVentes()
        {
            var listeVentes = _service.GetAllVentes();
            return Ok(_mapper.Map<IEnumerable<VentesDTO>>(listeVentes));
        }

        //GET api/Ventes/{id}
        [HttpGet("{id}", Name = "GetVentesById")]
        public ActionResult<VentesDTO> GetVentesById(int id)
        {
            var commandItem = _service.GetVentesById(id);
            if (commandItem != null)
            {
                return Ok(_mapper.Map<VentesDTO>(commandItem));
            }
            return NotFound();
        }
        //PUT api/Ventes/{id}

        [HttpPut("{id}")]
        public ActionResult UpdateVentes(int id, VentesDTO Vente)
        {
            var VentesFromRepo = _service.GetVentesById(id);
            if (VentesFromRepo == null)
            {
                return NotFound();
            }
            VentesFromRepo.Dump();
            _mapper.Map(Vente, VentesFromRepo);
            VentesFromRepo.Dump();
            Vente.Dump();
            // inutile puisque la fonction ne fait rien, mais garde la cohérence
            _service.UpdateVentes(VentesFromRepo);
            return NoContent();
        }
        //DELETE api/Ventes/{id}
        [HttpDelete("{id}")]
        public ActionResult DeleteVentes(int id)
        {
            var VentesModelFromRepo = _service.GetVentesById(id);
            if (VentesModelFromRepo == null)
            {
                return NotFound();
            }
            _service.DeleteVentes(VentesModelFromRepo);
            return NoContent();
        }
      
       
    }
}
