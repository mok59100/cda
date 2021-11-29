using AutoMapper;
using ExerciceTableLiees.Data.Dtos;
using ExerciceTableLiees.Data.Models;
using ExerciceTableLiees.Data.Services;
using Microsoft.AspNetCore.JsonPatch;
using Microsoft.AspNetCore.Mvc;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace ExerciceTableLiees.Controllers
{
    [Route("api/proprietaires")]
    [ApiController]
    public class AutomobilesController :ControllerBase
    {

        private readonly AutomobilesServices _service;
        private readonly IMapper _mapper;

        public AutomobilesController(AutomobilesServices service, IMapper mapper)
        {
            _service = service;
            _mapper = mapper;
        }

        //GET api/Automobiles
        [HttpGet]
        public ActionResult<IEnumerable<AutomobilesDTO>> GetAllAutomobiles()
        {
            IEnumerable<Automobile> listeAutomobiles = _service.GetAllAutomobiles();
            return Ok(_mapper.Map<IEnumerable<AutomobilesDTO>>(listeAutomobiles));
        }

        //GET api/Automobiles/{i}
        [HttpGet("{id}", Name = "GetAutomobileById")]
        public ActionResult<AutomobilesDTO> GetAutomobileById(int id)
        {
            Automobile commandItem = _service.GetAutomobileById(id);
            if (commandItem != null)
            {
                return Ok(_mapper.Map<AutomobilesDTO>(commandItem));
            }
            return NotFound();
        }

        //POST api/Automobiles
        [HttpPost]
        public ActionResult<AutomobilesDTO> CreateAutomobile(Automobile obj)
        {
            _service.AddAutomobile(obj);
            return CreatedAtRoute(nameof(GetAutomobileById), new { Id = obj.IdAuto }, obj);
        }

        //POST api/Automobiles/{id}
        [HttpPut("{id}")]
        public ActionResult UpdateAutomobile(int id, AutomobilesDTO obj)
        {
            Automobile objFromRepo = _service.GetAutomobileById(id);
            if (objFromRepo == null)
            {
                return NotFound();
            }
            _mapper.Map(obj, objFromRepo);
            _service.UpdateAutomobile(objFromRepo);
            return NoContent();
        }

        // Exemple d'appel
        // [{
        // "op":"replace",
        // "path":"",
        // "value":""
        // }]
        //PATCH api/Automobiles/{id}
        [HttpPatch("{id}")]
        public ActionResult PartialAutomobileUpdate(int id, JsonPatchDocument<Automobile> patchDoc)
        {
            Automobile objFromRepo = _service.GetAutomobileById(id);
            if (objFromRepo == null)
            {
                return NotFound();
            }
            Automobile objToPatch = _mapper.Map<Automobile>(objFromRepo);
            patchDoc.ApplyTo(objToPatch, ModelState);
            if (!TryValidateModel(objToPatch))
            {
                return ValidationProblem(ModelState);
            }
            _mapper.Map(objToPatch, objFromRepo);
            _service.UpdateAutomobile(objFromRepo);
            return NoContent();
        }

        //DELETE api/Automobiles/{id}
        [HttpDelete("{id}")]
        public ActionResult DeleteAutomobile(int id)
        {
            Automobile obj = _service.GetAutomobileById(id);
            if (obj == null)
            {
                return NotFound();
            }
            _service.DeleteAutomobile(obj);
            return NoContent();
        }


    }
}
