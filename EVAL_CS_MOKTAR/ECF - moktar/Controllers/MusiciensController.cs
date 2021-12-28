using AutoMapper;
using ECF.Data.Dtos;
using ECF.Data.Models;
using ECF.Data.Profiles;
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

        public MusiciensController(EcfContext _context)
        {
            _service = new MusiciensServices(_context);
            var config = new MapperConfiguration(cfg =>
            {
                cfg.AddProfile<MusiciensProfiles>();
            });
            _mapper = config.CreateMapper();
        }
            //GET api/Musiciens
            [HttpGet]
            public IEnumerable<MusiciensDTOIn> GetAllMusiciens()
            {
                IEnumerable<Musicien> listeMusiciens = _service.GetAllMusiciens();
                return _mapper.Map<IEnumerable<MusiciensDTOIn>>(listeMusiciens);
            }
            [HttpGet]
            public IEnumerable<MusiciensDTOOutAvecGroupe> GetAllMusiciensAvecGroupe()
            {
                IEnumerable<Musicien> listeMusiciens = _service.GetAllMusiciens();
                return _mapper.Map<IEnumerable<MusiciensDTOOutAvecGroupe>>(listeMusiciens);
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
            public void CreateMusicien(MusiciensDTOIn objIn)
            {
                Musicien obj = _mapper.Map<Musicien>(objIn);
            _service.AddMusicien(obj);

            }

            //POST api/Musiciens/{id}
            [HttpPut("{id}")]
            public ActionResult UpdateMusicien(int id, MusiciensDTOIn obj)
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
            public bool DeleteMusicien(int id)
            {
                Musicien obj = _service.GetMusicienById(id);
                if (obj == null)
                {
                    return false;
                }
                _service.DeleteMusicien(obj);
                return true;
            }
        }
    }
     
