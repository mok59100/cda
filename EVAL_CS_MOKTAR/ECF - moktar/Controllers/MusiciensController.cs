using AutoMapper;
using ECF.Data.Dtos;
using ECF.Data.Models;
using ECF.Data.Services;
using Microsoft.AspNetCore.JsonPatch;
using Microsoft.AspNetCore.Mvc;
using System;
using System.Collections.Generic;

namespace ECF.Data.Controllers
{
	[Route("api/[controller]")]
	[ApiController]

	 class MusiciensController : ControllerBase
    { 
        private readonly MusiciensServices _service;
        private readonly IMapper _mapper;

        public MusiciensController(MusiciensServices service, IMapper mapper)
        {
            _service = service;
            _mapper = mapper;
        }

        //GET api/Musiciens
        [HttpGet]
        public ActionResult<IEnumerable<MusiciensDTOIn>> GetAllMusiciens()
        {
            IEnumerable<Musicien> listeMusiciens = _service.GetAllMusiciens();
            return Ok(_mapper.Map<IEnumerable<MusiciensDTOIn>>(listeMusiciens));
        }
        [HttpGet]
        public ActionResult<IEnumerable<MusiciensDTOOutAvecGroupe>> GetAllMusiciensAvecGroupes()
        {
            IEnumerable<Musicien> listeMusiciens = _service.GetAllMusiciens();
            return Ok(_mapper.Map<IEnumerable<MusiciensDTOOutAvecGroupe>>(listeMusiciens));
        }

        //GET api/Musiciens/{i}
        [HttpGet("{id}", Name = "MusicienById")]
        public ActionResult<MusiciensDTOOut> GetMusicienById(int id)
        {
            Musicien commandItem = _service.GetMusicienById(id);
            if (commandItem != null)
            {
                return Ok(_mapper.Map<MusiciensDTOOut>(commandItem));
            }
            return NotFound();
        }

        //POST api/Musiciens
        [HttpPost]
        public ActionResult<MusiciensDTOOut> CreateMusicien(Musicien obj)
        {
            _service.AddMusicien(obj);
            return CreatedAtRoute(nameof(GetMusicienById), new { Id = obj.IdMusicien }, obj);
        }

        //POST api/Musiciens/{id}
        [HttpPut("{id}")]
        public ActionResult UpdateMusicien(int id, MusiciensDTOOut obj)
        {
        Musicien objFromRepo = _service.GetMusicienById(id);
            if (objFromRepo == null)
            {
                return NotFound();
            }
            _mapper.Map(obj, objFromRepo);
            _service.UpdateMusicien(objFromRepo);
            return NoContent();
        }

        // Exemple d'appel
        // [{
        // "op":"replace",
        // "path":"",
        // "value":""
        // }]
        

        //DELETE api/Musiciens/{id}
        [HttpDelete("{id}")]
        public ActionResult DeleteMusicien(int id)
        {
        Musicien obj = _service.GetMusicienById(id);
            if (obj == null)
            {
                return NotFound();
            }
            _service.DeleteMusicien(obj);
            return NoContent();
        }
    }

}
