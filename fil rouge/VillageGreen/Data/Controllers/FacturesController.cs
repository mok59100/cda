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
    class FacturesController :ControllerBase
    {
        private readonly FacturesService _service;
        private readonly IMapper _mapper;

        public FacturesController(FacturesService service, IMapper mapper)
        {
            _service = service;
            _mapper = mapper;
        }

        //GET api/Factures
        [HttpGet]
        public ActionResult<IEnumerable<FactureDTOOut>> GetAllFactures()
        {
            IEnumerable<Facture> listeFactures = _service.GetAllFactures();
            return Ok(_mapper.Map<IEnumerable<FactureDTOOut>>(listeFactures));
        }

        //GET api/Factures/{i}
        [HttpGet("{id}", Name = "GetFactureById")]
        public ActionResult<FactureDTOOut> GetFactureById(int id)
        {
            Facture commandItem = _service.GetFactureById(id);
            if (commandItem != null)
            {
                return Ok(_mapper.Map<FactureDTOOu>(commandItem));
            }
            return NotFound();
        }

        //POST api/Factures
        [HttpPost]
        public ActionResult<FactureDTOOut> CreateNomModel(FactureDTOIn objIn)
        {
            Facture obj = _mapper.Map<Facture>(objIn);
            _service.AddFacture(obj);
            return CreatedAtRoute(nameof(GetFactureById), new { Id = obj.IdFacture }, obj);
        }

        //POST api/Factures/{id}
        [HttpPut("{id}")]
        public ActionResult UpdateFacture(int id, FactureDTOIn obj)
        {
            Facture objFromRepo = _service.GetFactureById(id);
            if (objFromRepo == null)
            {
                return NotFound();
            }
            _mapper.Map(obj, objFromRepo);
            _service.UpdateFacture(objFromRepo);
            return NoContent();
        }


        //DELETE api/Factures/{id}
        [HttpDelete("{id}")]
        public ActionResult DeleteFacture(int id)
        {
            Facture obj = _service.GetFactureById(id);
            if (obj == null)
            {
                return NotFound();
            }
            _service.DeleteFacture(obj);
            return NoContent();
        }


    }
}
