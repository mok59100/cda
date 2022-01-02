using AutoMapper;
using Microsoft.AspNetCore.JsonPatch;
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
    class RubriquesController: ControllerBase
    {
        private readonly RubriquesService _service;
        private readonly IMapper _mapper;

        public RubriquesController(RubriquesService service, IMapper mapper)
        {
            _service = service;
            _mapper = mapper;
        }

        //GET api/Rubriques
        [HttpGet]
        public ActionResult<IEnumerable<RubriqueDTOIn>> GetAllRubriques()
        {
            IEnumerable<Rubrique> listeRubriques = _service.GetAllRubriques();
            return Ok(_mapper.Map<IEnumerable<RubriqueDTOIn>>(listeRubriques));
        }

        //GET api/Rubrique/{i}
        [HttpGet("{id}", Name = "GetRubriqueById")]
        public ActionResult<RubriqueDTOIn> GetRubriqueById(int id)
        {
            Rubrique commandItem = _service.GetRubriqueById(id);
            if (commandItem != null)
            {
                return Ok(_mapper.Map<RubriqueDTOIn>(commandItem));
            }
            return NotFound();
        }

        //POST api/Rubriques
        [HttpPost]
        public ActionResult<RubriqueDTOIn> CreateRubrique(RubriqueDTOIn objIn)
        {
            Rubrique obj = _mapper.Map<Rubrique>(objIn);
            _service.AddRubrique(obj);
            return CreatedAtRoute(nameof(GetRubriqueById), new { Id = obj.IdRubrique }, obj);
        }

        //POST api/Rubriques/{id}
        [HttpPut("{id}")]
        public ActionResult UpdateRubrique(int id, RubriqueDTOIn obj)
        {
            Rubrique objFromRepo = _service.GetRubriqueById(id);
            if (objFromRepo == null)
            {
                return NotFound();
            }
            _mapper.Map(obj, objFromRepo);
            _service.UpdateRubrique(objFromRepo);
            return NoContent();
        }

       

        //DELETE api/Rubriques/{id}
        [HttpDelete("{id}")]
        public ActionResult DeleteRubrique(int id)
        {
            Rubrique obj = _service.GetRubriqueById(id);
            if (obj == null)
            {
                return NotFound();
            }
            _service.DeleteRubrique(obj);
            return NoContent();
        }


    }
}
