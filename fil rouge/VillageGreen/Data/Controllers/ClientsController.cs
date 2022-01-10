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
    class ClientsController: ControllerBase
    {
        private readonly ClientsService _service;
        private readonly IMapper _mapper;

        public ClientsController(ClientsService service, IMapper mapper)
        {
            _service = service;
            _mapper = mapper;
        }

        //GET api/Clients
        [HttpGet]
        public ActionResult<IEnumerable<ClientDTOOut>> GetAllClients()
        {
            IEnumerable<Client> listeClients = _service.GetAllClients();
            return Ok(_mapper.Map<IEnumerable<ClientDTOOut>>(listeClients));
        }

        //GET api/Clients/{i}
        [HttpGet("{id}", Name = "GetClientById")]
        public ActionResult<ClientDTOOut> GetClientById(int id)
        {
            Client commandItem = _service.GetClientById(id);
            if (commandItem != null)
            {
                return Ok(_mapper.Map<ClientDTOOut>(commandItem));
            }
            return NotFound();
        }

        //POST api/Clients
        [HttpPost]
        public ActionResult<ClientDTOOut> CreateClient(ClientDTOIn objIn)
        {
            Client obj = _mapper.Map<Client>(objIn);
            _service.AddClient(obj);
            return CreatedAtRoute(nameof(GetClientById), new { Id = obj.IdClient }, obj);
        }

        //POST api/Clients/{id}
        [HttpPut("{id}")]
        public ActionResult UpdateClient(int id, ClientDTOIn obj)
        {
            Client objFromRepo = _service.GetClientById(id);
            if (objFromRepo == null)
            {
                return NotFound();
            }
            _mapper.Map(obj, objFromRepo);
            _service.UpdateClient(objFromRepo);
            return NoContent();
        }

      
        //DELETE api/Clients/{id}
        [HttpDelete("{id}")]
        public ActionResult DeleteClient(int id)
        {
            Client obj = _service.GetClientById(id);
            if (obj == null)
            {
                return NotFound();
            }
            _service.DeleteClient(obj);
            return NoContent();
        }


    }
}
