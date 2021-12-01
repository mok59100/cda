using AutoMapper;
using LocationAuto.Data.Service;


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
    public class VoituresController : ControllerBase
    {

        private readonly VoituresServices _service;
        private readonly IMapper _mapper;

        public VoituresController(VoituresServices service, IMapper mapper)
        {
            _service = service;
            _mapper = mapper;
        }

        //GET api/NomController
        [HttpGet]
        public ActionResult<IEnumerable<VoituresDTO>> GetAllVoitures()
        {
            IEnumerable<Voitures> listeVoitures = _service.GetAllVoitures();
            return Ok(_mapper.Map<IEnumerable<VoituresDTO>>(listeVoitures));
        }

        //GET api/NomController/{i}
        [HttpGet("{id}", Name = "GetVoituresById")]
        public ActionResult<VoituresDTO> GetVoituresById(int id)
        {
            Voitures commandItem = _service.GetVoituresById(id);
            if (commandItem != null)
            {
                return Ok(_mapper.Map<VoituresDTO>(commandItem));
            }
            return NotFound();
        }

        //POST api/NomController
        [HttpPost]
        public ActionResult<VoituresDTO> CreateVoitures(Voitures obj)
        {
            _service.AddVoitures(obj);
            return CreatedAtRoute(nameof(GetVoituresById), new { Id = obj.IdVoiture }, obj);
        }

        //POST api/NomController/{id}
        [HttpPut("{id}")]
        public ActionResult UpdateVoitures(int id, VoituresDTO obj)
        {
            Voitures objFromRepo = _service.GetVoituresById(id);
            if (objFromRepo == null)
            {
                return NotFound();
            }
            _mapper.Map(obj, objFromRepo);
            _service.UpdateVoitures(objFromRepo);
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
        public ActionResult PartialVoituresUpdate(int id, JsonPatchDocument<Voitures> patchDoc)
        {
            Voitures objFromRepo = _service.GetVoituresById(id);
            if (objFromRepo == null)
            {
                return NotFound();
            }
            Voitures objToPatch = _mapper.Map<Voitures>(objFromRepo);
            patchDoc.ApplyTo(objToPatch, ModelState);
            if (!TryValidateModel(objToPatch))
            {
                return ValidationProblem(ModelState);
            }
            _mapper.Map(objToPatch, objFromRepo);
            _service.UpdateVoitures(objFromRepo);
            return NoContent();
        }

        //DELETE api/NomController/{id}
        [HttpDelete("{id}")]
        public ActionResult DeleteVoitures(int id)
        {
            Voitures obj = _service.GetVoituresById(id);
            if (obj == null)
            {
                return NotFound();
            }
            _service.DeleteVoitures(obj);
            return NoContent();
        }


    }
}
