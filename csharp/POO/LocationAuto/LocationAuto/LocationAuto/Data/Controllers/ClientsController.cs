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
    public class ClientsController : ControllerBase
    {

        private readonly ClientsServices _service;
        private readonly IMapper _mapper;

        public ClientsController(ClientsServices service, IMapper mapper)
        {
            _service = service;
            _mapper = mapper;
        }

        //GET api/NomController
        [HttpGet]
        public ActionResult<IEnumerable<ClientsDTO>> GetAllClients()
        {
            IEnumerable<Clients> listeClients = _service.GetAllClients();
            return Ok(_mapper.Map<IEnumerable<ClientsDTO>>(listeClients));
        }

        //GET api/NomController/{i}
        [HttpGet("{id}", Name = "GetNomModelById")]
        public ActionResult<ClientsDTO> GetClientsById(int id)
        {
            Clients commandItem = _service.GetClientsById(id);
            if (commandItem != null)
            {
                return Ok(_mapper.Map<ClientsDTO>(commandItem));
            }
            return NotFound();
        }

        //POST api/NomController
        [HttpPost]
        public ActionResult<ClientsDTO> CreateClients(Clients obj)
        {
            _service.AddClients(obj);
            return CreatedAtRoute(nameof(GetClientsById), new { Id = obj.IdClient }, obj);
        }

        //POST api/NomController/{id}
        [HttpPut("{id}")]
        public ActionResult UpdateClients(int id, ClientsDTO obj)
        {
            Clients objFromRepo = _service.GetClientsById(id);
            if (objFromRepo == null)
            {
                return NotFound();
            }
            _mapper.Map(obj, objFromRepo);
            _service.UpdateClients(objFromRepo);
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
        public ActionResult PartialClientsUpdate(int id, JsonPatchDocument<Clients> patchDoc)
        {
            Clients objFromRepo = _service.GetClientsById(id);
            if (objFromRepo == null)
            {
                return NotFound();
            }
            Clients objToPatch = _mapper.Map<Clients>(objFromRepo);
            patchDoc.ApplyTo(objToPatch, ModelState);
            if (!TryValidateModel(objToPatch))
            {
                return ValidationProblem(ModelState);
            }
            _mapper.Map(objToPatch, objFromRepo);
            _service.UpdateClients(objFromRepo);
            return NoContent();
        }

        //DELETE api/NomController/{id}
        [HttpDelete("{id}")]
        public ActionResult DeleteClients(int id)
        {
            Clients obj = _service.GetClientsById(id);
            if (obj == null)
            {
                return NotFound();
            }
            _service.DeleteClients(obj);
            return NoContent();
        }


    }
}
