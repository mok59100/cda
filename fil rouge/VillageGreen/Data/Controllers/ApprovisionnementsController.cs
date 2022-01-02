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
    class ApprovisionnementsController:ControllerBase
    {
        private readonly ApprovisionnementsService _service;
        private readonly IMapper _mapper;

        public ApprovisionnementsController(ApprovisionnementsService service, IMapper mapper)
        {
            _service = service;
            _mapper = mapper;
        }

        //GET api/Approvisionnements
        [HttpGet]
        public ActionResult<IEnumerable<ApprovisionnementDTOOut>> GetAllApprovisionnements()
        {
            IEnumerable<Approvisionnement> listeApprovisionnements = _service.GetAllApprovisionnements();
            return Ok(_mapper.Map<IEnumerable<ApprovisionnementDTOOut>>(listeApprovisionnements));
        }

        //GET api/Approvisionnements/{i}
        [HttpGet("{id}", Name = "GetApprovisionnementById")]
        public ActionResult<ApprovisionnementDTOOut> GetApprovisionnementById(int id)
        {
            Approvisionnement commandItem = _service.GetApprovisionnementById(id);
            if (commandItem != null)
            {
                return Ok(_mapper.Map<ApprovisionnementDTOOut>(commandItem));
            }
            return NotFound();
        }

        //POST api/Approvisionnements
        [HttpPost]
        public ActionResult<ApprovisionnementDTOOut> CreateApprovisionnement(ApprovisionnementDTOIn objIn)
        {
            Approvisionnement obj = _mapper.Map<Approvisionnement>(objIn);
            _service.AddApprovisionnement(obj);
            return CreatedAtRoute(nameof(GetApprovisionnementById), new { Id = obj.IdApprovisionnement }, obj);
        }

        //POST api/Approvisionnements/{id}
        [HttpPut("{id}")]
        public ActionResult UpdateApprovisionnement(int id, ApprovisionnementDTOIn obj)
        {
            Approvisionnement objFromRepo = _service.GetApprovisionnementById(id);
            if (objFromRepo == null)
            {
                return NotFound();
            }
            _mapper.Map(obj, objFromRepo);
            _service.UpdateApprovisionnement(objFromRepo);
            return NoContent();
        }

        
        //DELETE api/Approvisionnements/{id}
        [HttpDelete("{id}")]
        public ActionResult DeleteApprovisionnement(int id)
        {
            Approvisionnement obj = _service.GetApprovisionnementById(id);
            if (obj == null)
            {
                return NotFound();
            }
            _service.DeleteApprovisionnement(obj);
            return NoContent();
        }


    }
}
