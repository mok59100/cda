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
    class TVAController: ControllerBase
    {
        private readonly TVAService _service;
        private readonly IMapper _mapper;

        public TVAController(TVAService service, IMapper mapper)
        {
            _service = service;
            _mapper = mapper;
        }

        //GET api/TVA
        [HttpGet]
        public ActionResult<IEnumerable<TvaDTOOut>> GetAllTVA()
        {
            IEnumerable<TVA> listeTVA = _service.GetAllTVA();
            return Ok(_mapper.Map<IEnumerable<TvaDTOOut>>(listeTVA));
        }

        //GET api/TVA/{i}
        [HttpGet("{id}", Name = "GetTVAById")]
        public ActionResult<TvaDTOOut> GetTVAById(int id)
        {
            TVA commandItem = _service.GetTVAById(id);
            if (commandItem != null)
            {
                return Ok(_mapper.Map<TvaDTOOut>(commandItem));
            }
            return NotFound();
        }

        //POST api/TVA
        [HttpPost]
        public ActionResult<TvaDTOOut> CreateTVA(TvaDTOIn objIn)
        {
            TVA obj = _mapper.Map<TVA>(objIn);
            _service.AddTVA(obj);
            return CreatedAtRoute(nameof(GetTVAById), new { Id = obj.IdTva }, obj);
        }

        //POST api/TVA/{id}
        [HttpPut("{id}")]
        public ActionResult UpdateTVA(int id, TvaDTOIn obj)
        {
            TVA objFromRepo = _service.GetTVAById(id);
            if (objFromRepo == null)
            {
                return NotFound();
            }
            _mapper.Map(obj, objFromRepo);
            _service.UpdateTVA(objFromRepo);
            return NoContent();
        }

       
        //DELETE api/TVA/{id}
        [HttpDelete("{id}")]
        public ActionResult DeleteTVA(int id)
        {
            TVA obj = _service.GetTVAById(id);
            if (obj == null)
            {
                return NotFound();
            }
            _service.DeleteTVA(obj);
            return NoContent();
        }


    }
}
