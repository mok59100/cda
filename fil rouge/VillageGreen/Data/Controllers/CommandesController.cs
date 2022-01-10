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
    class CommandesController: ControllerBase
    {
        private readonly CommandesService _service;
        private readonly IMapper _mapper;

        public CommandesController(CommandesService service, IMapper mapper)
        {
            _service = service;
            _mapper = mapper;
        }

        //GET api/Commandes
        [HttpGet]
        public ActionResult<IEnumerable<CommandeDTOOut>> GetAllCommandes()
        {
            IEnumerable<Commande> listeCommandes = _service.GetAllCommandes();
            return Ok(_mapper.Map<IEnumerable<CommandeDTOOut>>(listeCommandes));
        }

        //GET api/Commandes/{i}
        [HttpGet("{id}", Name = "GetCommandeById")]
        public ActionResult<CommandeDTOOut> GetCommandeById(int id)
        {
            Commande commandItem = _service.GetCommandeById(id);
            if (commandItem != null)
            {
                return Ok(_mapper.Map<CommandeDTOOut>(commandItem));
            }
            return NotFound();
        }

        //POST api/Commandes
        [HttpPost]
        public ActionResult<CommandeDTOOut> CreateCommande(CommandeDTOIn objIn)
        {
            Commande obj = _mapper.Map<Commande>(objIn);
            _service.AddCommande(obj);
            return CreatedAtRoute(nameof(GetCommandeById), new { Id = obj.IdCommande }, obj);
        }

        //POST api/Commandes/{id}
        [HttpPut("{id}")]
        public ActionResult UpdateCommande(int id, CommandeDTOIn obj)
        {
            Commande objFromRepo = _service.GetCommandeById(id);
            if (objFromRepo == null)
            {
                return NotFound();
            }
            _mapper.Map(obj, objFromRepo);
            _service.UpdateCommande(objFromRepo);
            return NoContent();
        }


        //DELETE api/Commandes/{id}
        [HttpDelete("{id}")]
        public ActionResult DeleteCommande(int id)
        {
            Commande obj = _service.GetCommandeById(id);
            if (obj == null)
            {
                return NotFound();
            }
            _service.DeleteCommande(obj);
            return NoContent();
        }


    }
}
