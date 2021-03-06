using AutoMapper;
using ECF.Data;
using ECF.Data.Dtos;
using ECF.Data.Models;
using ECF.Data.Profiles;
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

        public GroupesController(EcfContext _context)
        {
            _service = new GroupesServices(_context);
            var config = new MapperConfiguration(cfg =>
            {
                cfg.AddProfile<GroupesProfiles>();
                cfg.AddProfile<MusiciensProfiles>();

            });
            _mapper = config.CreateMapper();
        }

        //GET api/Groupe
        [HttpGet]
        public IEnumerable<GroupesDTOOut> GetAllGroupes()
        {
            IEnumerable<Groupe> listeGroupes = _service.GetAllGroupes();
            return _mapper.Map<IEnumerable<GroupesDTOOut>>(listeGroupes);
        }
        //GET api/Groupe
        [HttpGet]
        public IEnumerable<GroupesDTOOutavecMusiciens> GetAllGroupesAvecMusiciens()
        {
            IEnumerable<Groupe> listeGroupes = _service.GetAllGroupes();
            return _mapper.Map<IEnumerable<GroupesDTOOutavecMusiciens>>(listeGroupes);
        }

        //GET api/Groupe/{i}
        [HttpGet("{id}", Name = "GetGroupeById")]
        public ActionResult<GroupesDTOOutavecMusiciens> GetGroupeById(int id)
        {
            Groupe commandItem = _service.GetGroupeById(id);
            if (commandItem != null)
            {
                return Ok(_mapper.Map<GroupesDTOOutavecMusiciens>(commandItem));
            }
            return NotFound();
        }

        //POST api/Groupe
        [HttpPost]
        public ActionResult <GroupesDTOOut> CreateGroupe(GroupesDTOIn objIn)
        {
            Groupe obj = _mapper.Map<Groupe>(objIn);
            _service.AddGroupe(obj);
            return CreatedAtRoute (nameof(GetGroupeById), new { Id = obj.IdGroupe }, obj);
        }

        //POST api/Groupe/{id}
        [HttpPut("{id}")]
        public ActionResult UpdateGroupe(int id, GroupesDTOIn obj)
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