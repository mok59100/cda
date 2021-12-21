using AutoMapper;
using ECF.Data.Dtos;
using ECF.Data.Models;
using ECF.Data.Services;
using Microsoft.AspNetCore.JsonPatch;
using Microsoft.AspNetCore.Mvc;
using System;
using System.Collections.Generic;

namespace ECF.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    class GroupesController:ControllerBase
	{

        private readonly GroupesServices _service;
        private readonly IMapper _mapper;

        public GroupesController(GroupesServices service)
        {
            _service = service;
            _mapper = mapper;
        }

        //GET api/Groupe
        [HttpGet]
        public ActionResult<IEnumerable<GroupesDTOIn>> GetAllGroupes()
        {
            IEnumerable<Groupe> listeGroupe = _service.GetAllGroupes();
            return Ok(_mapper.Map<IEnumerable<GroupesDTOIn>>(listeGroupe));
        }
        //GET api/Groupe
        [HttpGet]
        public ActionResult<IEnumerable<GroupesDTOOutavecMusiciens>> GetAllGroupesAvecMusiciens()
        {
            IEnumerable<Groupe> listeGroupe = _service.GetAllGroupes();
            return Ok(_mapper.Map<IEnumerable<GroupesDTOOutavecMusiciens>>(listeGroupe));
        }

        //GET api/Groupe/{i}
        [HttpGet("{id}", Name = "GetGroupeById")]
        public ActionResult<GroupesDTOOut> GetGroupeById(int id)
        {
            Groupe commandItem = _service.GetGroupeById(id);
            if (commandItem != null)
            {
                return Ok(_mapper.Map<GroupesDTOOut>(commandItem));
            }
            return NotFound();
        }

        //POST api/Groupe
        [HttpPost]
        public ActionResult<GroupesDTOOut> CreateGroupe(Groupe obj)
        {
            _service.AddGroupe(obj);
            return CreatedAtRoute(nameof(GetGroupeById), new { Id = obj.IdGroupe }, obj);
        }

        //POST api/Groupe/{id}
        [HttpPut("{id}")]
        public ActionResult UpdateGroupe(int id, GroupesDTOOut obj)
        {
            Groupe objFromRepo = _service.GetGroupeById(id);
            if (objFromRepo == null)
            {
                return NotFound();
            }
            _mapper.Map(obj, objFromRepo);
            _service.UpdateGroupe(objFromRepo);
            return NoContent();
        }

        // Exemple d'appel
        // [{
        // "op":"replace",
        // "path":"",
        // "value":""
        // }]
   

        //DELETE api/Groupe/{id}
        [HttpDelete("{id}")]
        public ActionResult DeleteGroupe(int id)
        {
            Groupe obj = _service.GetGroupeById(id);
            if (obj == null)
            {
                return NotFound();
            }
            _service.DeleteGroupe(obj);
            return NoContent();
        }


    }
}