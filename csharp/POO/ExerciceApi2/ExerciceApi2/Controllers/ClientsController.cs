using AutoMapper;
using ExerciceApi2.Data.Dtos;
using ExerciceApi2.Data.Models;
using ExerciceApi2.Data.Profiles;
using ExerciceApi2.Helpers;

using Microsoft.AspNetCore.Mvc;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace ExerciceApi2.Controllers
{
    [Route("api/Clients")]
    [ApiController]
    public class ClientsController : ControllerBase
    {
        private readonly ClientsService _service;
        private readonly IMapper _mapper;
        public ClientsController(ClientsService service, IMapper mapper)
        {
            _service = service;
            _mapper = mapper;
        }

        [HttpGet]
        public ActionResult<IEnumerable<ClientsDTO>> GetAllClients()
        {
            var listeClients = _service.GetAllClients();
            return Ok(_mapper.Map<IEnumerable<ClientsDTO>>(listeClients));
        }

        //GET api/Clients/{id}
        [HttpGet("{id}", Name = "GetClientsById")]
        public ActionResult<ClientsDTO> GetClientsById(int id)
        {
            var commandItem = _service.GetClientsById(id);
            if (commandItem != null)
            {
                return Ok(_mapper.Map<ClientsDTO>(commandItem));
            }
            return NotFound();
        }
        //PUT api/Clients/{id}

        [HttpPut("{id}")]
        public ActionResult UpdateClients(int id, ClientsDTO Client)
        {
            var ClientsFromRepo = _service.GetClientsById(id);
            if (ClientsFromRepo == null)
            {
                return NotFound();
            }
            ClientsFromRepo.Dump();
            _mapper.Map(Client, ClientsFromRepo);
            ClientsFromRepo.Dump();
            Client.Dump();
            // inutile puisque la fonction ne fait rien, mais garde la cohérence
            _service.UpdateClients(ClientsFromRepo);
            return NoContent();
        }
        //DELETE api/Clients/{id}
        [HttpDelete("{id}")]
        public ActionResult DeleteClients(int id)
        {
            var ClientsModelFromRepo = _service.GetClientsById(id);
            if (ClientsModelFromRepo == null)
            {
                return NotFound();
            }
            _service.DeleteClients(ClientsModelFromRepo);
            return NoContent();
        }
        //POST api/Clients
        [HttpPost]
        public ActionResult<ClientsDTO> CreateClients(Clients Client)
        {
            //on ajoute l’objet à la base de données
            _service.AddClients(Client);
            //on retourne le chemin de findById avec l'objet créé
            return CreatedAtRoute(nameof(GetClientsById), new
            {
                Id =
         Client.IdClient
            }, Client);
        }
    }
}