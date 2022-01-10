using AutoMapper;
using Microsoft.AspNetCore.Mvc;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using VillageGreen.Data.DTOs;
using VillageGreen.Data.Models;
using VillageGreen.Data.Services;

namespace VillageGreen.Data.Controllers
{
    class ProgressionsCommandeController:ControllerBase
    {
        private readonly ProgressionsCommandeService _service;
        private readonly IMapper _mapper;

        public ProgressionsCommandeController(ProgressionsCommandeService service, IMapper mapper)
        {
            _service = service;
            _mapper = mapper;
        }

        //GET api/ProgressionsCommande
        [HttpGet]
        public ActionResult<IEnumerable<ProgressionCommandeDTOOut>> GetAllProgressionsCommande()
        {
            IEnumerable<ProgressionCommande> listeProgressionsCommande = _service.GetAllProgressionsCommande();
            return Ok(_mapper.Map<IEnumerable<ProgressionCommandeDTOOut>>(listeProgressionsCommande));
        }

        //GET api/ProgressionsCommande/{i}
        [HttpGet("{id}", Name = "GetProgressionCommandeById")]
        public ActionResult<ProgressionCommandeDTOOut> GetProgressionCommandeById(int id)
        {
            ProgressionCommande commandItem = _service.GetProgressionCommandeById(id);
            if (commandItem != null)
            {
                return Ok(_mapper.Map<ProgressionCommandeDTOOut>(commandItem));
            }
            return NotFound();
        }

        //POST api/ProgressionsCommande
        [HttpPost]
        public ActionResult<ProgressionCommandeDTOOut> CreateProgressionCommande(ProgressionCommandeDTOIn objIn)
        {
            ProgressionCommande obj = _mapper.Map<ProgressionCommande>(objIn);
            _service.AddProgressionCommande(obj);
            return CreatedAtRoute(nameof(GetProgressionCommandeById), new { Id = obj.IdProgressionCommande }, obj);
        }

        //POST api/ProgressionsCommande/{id}
        [HttpPut("{id}")]
        public ActionResult UpdateProgressionCommande(int id, ProgressionCommandeDTOIn obj)
        {
            ProgressionCommande objFromRepo = _service.GetProgressionCommandeById(id);
            if (objFromRepo == null)
            {
                return NotFound();
            }
            _mapper.Map(obj, objFromRepo);
            _service.UpdateProgressionCommande(objFromRepo);
            return NoContent();
        }

        

        //DELETE api/ProgressionsCommande/{id}
        [HttpDelete("{id}")]
        public ActionResult DeleteProgressionCommande(int id)
        {
            ProgressionCommande obj = _service.GetProgressionCommandeById(id);
            if (obj == null)
            {
                return NotFound();
            }
            _service.DeleteProgressionCommande(obj);
            return NoContent();
        }


    }
}
