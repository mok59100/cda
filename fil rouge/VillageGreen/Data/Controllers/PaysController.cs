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
    class PaysController:ControllerBase
    {
        private readonly PaysService _service;
        private readonly IMapper _mapper;

        public PaysController(PaysService service, IMapper mapper)
        {
            _service = service;
            _mapper = mapper;
        }

        //GET api/Pays
        [HttpGet]
        public ActionResult<IEnumerable<PaysDTOOut>> GetAllPays()
        {
            IEnumerable<Pays> listePays = _service.GetAllPays();
            return Ok(_mapper.Map<IEnumerable<PaysDTOOut>>(listePays));
        }

        //GET api/Pays/{i}
        [HttpGet("{id}", Name = "GetPaysById")]
        public ActionResult<PaysDTOOut> GetPaysById(int id)
        {
            Pays commandItem = _service.GetPaysById(id);
            if (commandItem != null)
            {
                return Ok(_mapper.Map<PaysDTOOut>(commandItem));
            }
            return NotFound();
        }

        //POST api/Pays
        [HttpPost]
        public ActionResult<PaysDTOOut> CreatePays(PaysDTOIn objIn)
        {
            Pays obj = _mapper.Map<Pays>(objIn);
            _service.AddPays(obj);
            return CreatedAtRoute(nameof(GetPaysById), new { Id = obj.IdPays }, obj);
        }

        //POST api/Pays/{id}
        [HttpPut("{id}")]
        public ActionResult UpdatePays(int id, PaysDTOIn obj)
        {
            Pays objFromRepo = _service.GetPaysById(id);
            if (objFromRepo == null)
            {
                return NotFound();
            }
            _mapper.Map(obj, objFromRepo);
            _service.UpdatePays(objFromRepo);
            return NoContent();
        }

        

        //DELETE api/Pays/{id}
        [HttpDelete("{id}")]
        public ActionResult DeletePays(int id)
        {
            Pays obj = _service.GetPaysById(id);
            if (obj == null)
            {
                return NotFound();
            }
            _service.DeletePays(obj);
            return NoContent();
        }


    }
}
