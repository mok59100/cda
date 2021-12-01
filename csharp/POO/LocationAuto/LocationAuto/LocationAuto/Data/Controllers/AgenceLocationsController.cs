using AutoMapper;
using LocationAuto.Data.Services;
using Microsoft.AspNetCore.JsonPatch;
using Microsoft.AspNetCore.Mvc;
using System;



using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using LocationAuto.Data.Models;


namespace LocationAuto.Data.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class AgenceLocationsController :ControllerBase
    {

        private readonly AgenceLocationsServices _service;
        private readonly IMapper _mapper;

        public AgenceLocationsController(AgenceLocationsServices service, IMapper mapper)
        {
            _service = service;
            _mapper = mapper;
        }

        //GET api/
        [HttpGet]
        public ActionResult<IEnumerable<AgenceLocationsDTO>> GetAll()
        {
            IEnumerable<AgenceLocations> listeAgenceLocations = _service.GetAllAgenceLocations();
            return Ok(_mapper.Map<IEnumerable<AgenceLocationsDTO>>(listeAgenceLocations));
        }

        //GET api//{i}
        [HttpGet("{id}", Name = "GetAgenceLocationsById")]
        public ActionResult<AgenceLocationsDTO> GetAgenceLocationsById(int id)
        {
            AgenceLocations commandItem = _service.GetAgenceLocationsById(id);
            if (commandItem != null)
            {
                return Ok(_mapper.Map<AgenceLocationsDTO>(commandItem));
            }
            return NotFound();
        }

        //POST api/
        [HttpPost]
        public ActionResult<AgenceLocationsDTO> CreateAgenceLocations(AgenceLocations obj)
        {
            _service.AddAgenceLocations(obj);
            return CreatedAtRoute(nameof(GetAgenceLocationsById), new { Id = obj.IdAgence }, obj);
        }

        //POST api//{id}
        [HttpPut("{id}")]
        public ActionResult UpdateAgenceLocations(int id, AgenceLocationsDTO obj)
        {
            AgenceLocations objFromRepo = _service.GetAgenceLocationsById(id);
            if (objFromRepo == null)
            {
                return NotFound();
            }
            _mapper.Map(obj, objFromRepo);
            _service.UpdateAgenceLocations(objFromRepo);
            return NoContent();
        }

        // Exemple d'appel
        // [{
        // "op":"replace",
        // "path":"",
        // "value":""
        // }]
        //PATCH api//{id}
        [HttpPatch("{id}")]
        public ActionResult PartialAgenceLocationsUpdate(int id, JsonPatchDocument<AgenceLocations> patchDoc)
        {
            AgenceLocations objFromRepo = _service.GetAgenceLocationsById(id);
            if (objFromRepo == null)
            {
                return NotFound();
            }
            AgenceLocations objToPatch = _mapper.Map<AgenceLocations>(objFromRepo);
            patchDoc.ApplyTo(objToPatch, ModelState);
            if (!TryValidateModel(objToPatch))
            {
                return ValidationProblem(ModelState);
            }
            _mapper.Map(objToPatch, objFromRepo);
            _service.UpdateAgenceLocations(objFromRepo);
            return NoContent();
        }

        //DELETE api//{id}
        [HttpDelete("{id}")]
        public ActionResult DeleteAgenceLocations(int id)
        {
            AgenceLocations obj = _service.GetAgenceLocationsById(id);
            if (obj == null)
            {
                return NotFound();
            }
            _service.DeleteAgenceLocations(obj);
            return NoContent();
        }


    }
}
