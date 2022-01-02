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
    class AdressesController : ControllerBase
    {
        private readonly AdressesService _service;
        private readonly IMapper _mapper;

        public AdressesController(AdressesService service, IMapper mapper)
        {
            _service = service;
            _mapper = mapper;
        }

        //GET api/Adresses
        [HttpGet]
        public ActionResult<IEnumerable<AdresseDTOOut>> GetAllAdresses()
        {
            IEnumerable<Adresse> listeAdresses = _service.GetAllAdresses();
            return Ok(_mapper.Map<IEnumerable<AdresseDTOOut>>(listeAdresses));
        }

        //GET api/Adresses/{i}
        [HttpGet("{id}", Name = "GetAdresseById")]
        public ActionResult<AdresseDTOOut> GetAdresseById(int id)
        {
            Adresse commandItem = _service.GetAdresseById(id);
            if (commandItem != null)
            {
                return Ok(_mapper.Map<AdresseDTOOut>(commandItem));
            }
            return NotFound();
        }

        //POST api/Adresses
        [HttpPost]
        public ActionResult<AdresseDTOOut> CreateAdresse(AdresseDTOIn objIn)
        {
            Adresse obj = _mapper.Map<Adresse>(objIn);
            _service.AddAdresse(obj);
            return CreatedAtRoute(nameof(GetAdresseById), new { Id = obj.IdAdresse }, obj);
        }

        //POST api/Adresses/{id}
        [HttpPut("{id}")]
        public ActionResult UpdateNomModel(int id, AdresseDTOIn obj)
        {
            Adresse objFromRepo = _service.GetAdresseById(id);
            if (objFromRepo == null)
            {
                return NotFound();
            }
            _mapper.Map(obj, objFromRepo);
            _service.UpdateAdresse(objFromRepo);
            return NoContent();
        }


        //DELETE api/Adresses/{id}
        [HttpDelete("{id}")]
        public ActionResult DeleteAdresse(int id)
        {
            Adresse obj = _service.GetAdresseById(id);
            if (obj == null)
            {
                return NotFound();
            }
            _service.DeleteAdresse(obj);
            return NoContent();
        }


    }
}
