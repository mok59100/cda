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
    class HistoriquesTVAController: ControllerBase
    {
        private readonly HistoriquesTVAService _service;
        private readonly IMapper _mapper;

        public HistoriquesTVAController(HistoriquesTVAService service, IMapper mapper)
        {
            _service = service;
            _mapper = mapper;
        }

        //GET api/HistoriquesTVA
        [HttpGet]
        public ActionResult<IEnumerable<HistoriqueTVADTOOut>> GetAllHistoriquesTVA()
        {
            IEnumerable<HistoriqueTVA> listeHistoriquesTVA = _service.GetAllHistoriquesTVA();
            return Ok(_mapper.Map<IEnumerable<HistoriqueTVADTOOut>>(listeHistoriquesTVA));
        }

        //GET api/HistoriquesTVA/{i}
        [HttpGet("{id}", Name = "GetHistoriqueTVAById")]
        public ActionResult<HistoriqueTVADTOOut> GetHistoriqueTVAById(int id)
        {
            HistoriqueTVA commandItem = _service.GetHistoriqueTVAById(id);
            if (commandItem != null)
            {
                return Ok(_mapper.Map<HistoriqueTVADTOOut>(commandItem));
            }
            return NotFound();
        }

        //POST api/HistoriquesTVA
        [HttpPost]
        public ActionResult<HistoriqueTVADTOOut> CreateHistoriqueTVA(HistoriqueTVADTOIn objIn)
        {
            HistoriqueTVA obj = _mapper.Map<HistoriqueTVA>(objIn);
            _service.AddHistoriqueTVA(obj);
            return CreatedAtRoute(nameof(GetHistoriqueTVAById), new { Id = obj.IdHistoriqueTva }, obj);
        }

        //POST api/HistoriquesTVA/{id}
        [HttpPut("{id}")]
        public ActionResult UpdateHistoriqueTVA(int id, HistoriqueTVADTOIn obj)
        {
            HistoriqueTVA objFromRepo = _service.GetHistoriqueTVAById(id);
            if (objFromRepo == null)
            {
                return NotFound();
            }
            _mapper.Map(obj, objFromRepo);
            _service.UpdateHistoriqueTVA(objFromRepo);
            return NoContent();
        }

       
        //DELETE api/HistoriquesTVA/{id}
        [HttpDelete("{id}")]
        public ActionResult DeleteHistoriqueTVA(int id)
        {
            HistoriqueTVA obj = _service.GetHistoriqueTVAById(id);
            if (obj == null)
            {
                return NotFound();
            }
            _service.DeleteHistoriqueTVA(obj);
            return NoContent();
        }


    }
}
