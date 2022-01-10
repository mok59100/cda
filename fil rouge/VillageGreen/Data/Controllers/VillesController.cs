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
    class VillesController:ControllerBase
    {
        private readonly VillesService _service;
        private readonly IMapper _mapper;

        public VillesController(VillesService service, IMapper mapper)
        {
            _service = service;
            _mapper = mapper;
        }

        //GET api/Villes
        [HttpGet]
        public ActionResult<IEnumerable<VilleDTOOut>> GetAllVilles()
        {
            IEnumerable<Ville> listeVilles = _service.GetAllVilles();
            return Ok(_mapper.Map<IEnumerable<VilleDTOOut>>(listeVilles));
        }

        //GET api/Villes/{i}
        [HttpGet("{id}", Name = "GetVilleById")]
        public ActionResult<VilleDTOOut> GetVilleById(int id)
        {
            Ville commandItem = _service.GetVilleById(id);
            if (commandItem != null)
            {
                return Ok(_mapper.Map<VilleDTOOut>(commandItem));
            }
            return NotFound();
        }

        //POST api/Villes
        [HttpPost]
        public ActionResult<VilleDTOOut> CreateVille(VilleDTOIn objIn)
        {
            Ville obj = _mapper.Map<Ville>(objIn);
            _service.AddVille(obj);
            return CreatedAtRoute(nameof(GetVilleById), new { Id = obj.IdVille }, obj);
        }

        //POST api/Villes/{id}
        [HttpPut("{id}")]
        public ActionResult UpdateVille(int id, VilleDTOIn obj)
        {
            Ville objFromRepo = _service.GetVilleById(id);
            if (objFromRepo == null)
            {
                return NotFound();
            }
            _mapper.Map(obj, objFromRepo);
            _service.UpdateVille(objFromRepo);
            return NoContent();
        }


        //DELETE api/Villes/{id}
        [HttpDelete("{id}")]
        public ActionResult DeleteVille(int id)
        {
            Ville obj = _service.GetVilleById(id);
            if (obj == null)
            {
                return NotFound();
            }
            _service.DeleteVille(obj);
            return NoContent();
        }


    }
}
