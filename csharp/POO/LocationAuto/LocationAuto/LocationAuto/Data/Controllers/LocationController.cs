using AutoMapper;
using LocationAuto.Data.Models;
using LocationAuto.Data.Services;
using Microsoft.AspNetCore.JsonPatch;
using Microsoft.AspNetCore.Mvc;

using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;


namespace LocationAuto.Data.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class LocationController : ControllerBase
    {
       

        private readonly LocationServices _service;
        private readonly IMapper _mapper;

        public LocationController(LocationServices service, IMapper mapper)
        {
            _service = service;
            _mapper = mapper;
        }

        //GET api/NomController
        [HttpGet]
        public ActionResult<IEnumerable<LocationDTOOutVoitureClient>> GetAllLocation()
        {
            IEnumerable<Location> listeLocation = _service.GetAllLocation();
            return Ok(_mapper.Map<IEnumerable<LocationDTOOutVoitureClient>>(listeLocation));
        }

        //GET api/NomController/{i}
        [HttpGet("{id}", Name = "GetLocationById")]
        public ActionResult<LocationDTOOutVoitureClient> GetLocationById(int id)
        {
            Location commandItem =_service.GetLocationById(id);
            if (commandItem != null)
            {
                return Ok(_mapper.Map<LocationDTOOutVoitureClient>(commandItem));
            }
            return NotFound();
        }

        //POST api/NomController
        [HttpPost]
        public ActionResult<LocationDTOOut> CreateLocation(LocationDTO obj)
        {
            Location newLocation = _mapper.Map<Location>(obj);
            _service.AddLocation(newLocation);
            return CreatedAtRoute(nameof(GetLocationById), new { Id = newLocation.IdLocation }, newLocation);
        }

        //POST api/NomController/{id}
        [HttpPut("{id}")]
        public ActionResult UpdateLocation(int id, LocationDTO obj)
        {
            Location objFromRepo = _service.GetLocationById(id);
            if (objFromRepo == null)
            {
                return NotFound();
            }
            _mapper.Map(obj, objFromRepo);
            _service.UpdateLocation(objFromRepo);
            return NoContent();
        }

        // Exemple d'appel
        // [{
        // "op":"replace",
        // "path":"",
        // "value":""
        // }]
        //PATCH api/NomController/{id}
        [HttpPatch("{id}")]
        public ActionResult PartialLocationUpdate(int id, JsonPatchDocument<Location> patchDoc)
        {
            Location objFromRepo = _service.GetLocationById(id);
            if (objFromRepo == null)
            {
                return NotFound();
            }
            Location objToPatch = _mapper.Map<Location>(objFromRepo);
            patchDoc.ApplyTo(objToPatch, ModelState);
            if (!TryValidateModel(objToPatch))
            {
                return ValidationProblem(ModelState);
            }
            _mapper.Map(objToPatch, objFromRepo);
            _service.UpdateLocation(objFromRepo);
            return NoContent();
        }

        //DELETE api/NomController/{id}
        [HttpDelete("{id}")]
        public ActionResult DeleteLocation(int id)
        {
            Location obj = _service.GetLocationById(id);
            if (obj == null)
            {
                return NotFound();
            }
            _service.DeleteLocation(obj);
            return NoContent();
        }


    }
}
