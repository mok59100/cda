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
    class ReglementsController :ControllerBase
    {
        private readonly ReglementsService _service;
        private readonly IMapper _mapper;

        public ReglementsController(ReglementsService service, IMapper mapper)
        {
            _service = service;
            _mapper = mapper;
        }

        //GET api/Reglements
        [HttpGet]
        public ActionResult<IEnumerable<ReglementDTOOut>> GetAllReglements()
        {
            IEnumerable<Reglement> listeReglements = _service.GetAllReglements();
            return Ok(_mapper.Map<IEnumerable<ReglementDTOOut>>(listeReglements));
        }

        //GET api/Reglements/{i}
        [HttpGet("{id}", Name = "GetReglementById")]
        public ActionResult<ReglementDTOOut> GetReglementById(int id)
        {
            Reglement commandItem = _service.GetReglementById(id);
            if (commandItem != null)
            {
                return Ok(_mapper.Map<ReglementDTOOut>(commandItem));
            }
            return NotFound();
        }

        //POST api/Reglements
        [HttpPost]
        public ActionResult<ReglementDTOOut> CreateReglement(ReglementDTOIn objIn)
        {
            Reglement obj = _mapper.Map<Reglement>(objIn);
            _service.AddReglement(obj);
            return CreatedAtRoute(nameof(GetReglementById), new { Id = obj.IdReglement }, obj);
        }

        //POST api/Reglements/{id}
        [HttpPut("{id}")]
        public ActionResult UpdateReglement(int id, ReglementDTOIn obj)
        {
            Reglement objFromRepo = _service.GetReglementById(id);
            if (objFromRepo == null)
            {
                return NotFound();
            }
            _mapper.Map(obj, objFromRepo);
            _service.UpdateReglement(objFromRepo);
            return NoContent();
        }

        

        //DELETE api/Reglements/{id}
        [HttpDelete("{id}")]
        public ActionResult DeleteReglement(int id)
        {
            Reglement obj = _service.GetReglementById(id);
            if (obj == null)
            {
                return NotFound();
            }
            _service.DeleteReglement(obj);
            return NoContent();
        }


    }
}
