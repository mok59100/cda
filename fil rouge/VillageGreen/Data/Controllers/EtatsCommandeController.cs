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
    class EtatsCommandeController:ControllerBase
    {
        private readonly EtatsCommandeService _service;
        private readonly IMapper _mapper;

        public EtatsCommandeController(EtatsCommandeService service, IMapper mapper)
        {
            _service = service;
            _mapper = mapper;
        }

        //GET api/EtatsCommande
        [HttpGet]
        public ActionResult<IEnumerable<EtatCommandeDTOOut>> GetAllEtatsCommande()
        {
            IEnumerable<EtatCommande> listeEtatsCommande = _service.GetAllEtatsCommande();
            return Ok(_mapper.Map<IEnumerable<EtatCommandeDTOOut>>(listeEtatsCommande));
        }

        //GET api/EtatsCommande/{i}
        [HttpGet("{id}", Name = "GetEtatCommandeById")]
        public ActionResult<EtatCommandeDTOOut> GetEtatCommandeById(int id)
        {
            EtatCommande commandItem = _service.GetEtatCommandeById(id);
            if (commandItem != null)
            {
                return Ok(_mapper.Map<EtatCommandeDTOOut>(commandItem));
            }
            return NotFound();
        }

        //POST api/EtatsCommande
        [HttpPost]
        public ActionResult<EtatCommandeDTOOut> CreateEtatCommande(EtatCommandeDTOIn objIn)
        {
            EtatCommande obj = _mapper.Map<EtatCommande>(objIn);
            _service.AddEtatCommande(obj);
            return CreatedAtRoute(nameof(GetEtatCommandeById), new { Id = obj.IdEtatCommande }, obj);
        }

        //POST api/EtatsCommande/{id}
        [HttpPut("{id}")]
        public ActionResult UpdateEtatCommande(int id, EtatCommandeDTOIn obj)
        {
            EtatCommande objFromRepo = _service.GetEtatCommandeById(id);
            if (objFromRepo == null)
            {
                return NotFound();
            }
            _mapper.Map(obj, objFromRepo);
            _service.UpdateEtatCommande(objFromRepo);
            return NoContent();
        }

        

        //DELETE api/EtatsCommande/{id}
        [HttpDelete("{id}")]
        public ActionResult DeleteEtatCommande(int id)
        {
            EtatCommande obj = _service.GetEtatCommandeById(id);
            if (obj == null)
            {
                return NotFound();
            }
            _service.DeleteEtatCommande(obj);
            return NoContent();
        }


    }
}
