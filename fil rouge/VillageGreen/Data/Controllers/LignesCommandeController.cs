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
    class LignesCommandeController:ControllerBase
    {
        private readonly LignesCommandeService _service;
        private readonly IMapper _mapper;

        public LignesCommandeController(LignesCommandeService service, IMapper mapper)
        {
            _service = service;
            _mapper = mapper;
        }

        //GET api/LignesCommande
        [HttpGet]
        public ActionResult<IEnumerable<LigneCommandeDTOOut>> GetAllLignesCommande()
        {
            IEnumerable<LigneCommande> listeLignesCommande = _service.GetAllLignesCommande();
            return Ok(_mapper.Map<IEnumerable<LigneCommandeDTOOut>>(listeLignesCommande));
        }

        //GET api/LignesCommande/{i}
        [HttpGet("{id}", Name = "GetLigneCommandeById")]
        public ActionResult<LigneCommandeDTOOut> GetLigneCommandeById(int id)
        {
            LigneCommande commandItem = _service.GetLigneCommandeById(id);
            if (commandItem != null)
            {
                return Ok(_mapper.Map<LigneCommandeDTOOut>(commandItem));
            }
            return NotFound();
        }

        //POST api/LignesCommande
        [HttpPost]
        public ActionResult<LigneCommandeDTOOut> CreateLigneCommande(LigneCommandeDTOIn objIn)
        {
            LigneCommande obj = _mapper.Map<LigneCommande>(objIn);
            _service.AddLigneCommande(obj);
            return CreatedAtRoute(nameof(GetLigneCommandeById), new { Id = obj.IdLigneCommande }, obj);
        }

        //POST api/LignesCommande/{id}
        [HttpPut("{id}")]
        public ActionResult UpdateLigneCommande(int id, LigneCommandeDTOIn obj)
        {
            LigneCommande objFromRepo = _service.GetLigneCommandeById(id);
            if (objFromRepo == null)
            {
                return NotFound();
            }
            _mapper.Map(obj, objFromRepo);
            _service.UpdateLigneCommande(objFromRepo);
            return NoContent();
        }

        

        //DELETE api/LignesCommande/{id}
        [HttpDelete("{id}")]
        public ActionResult DeleteLigneCommande(int id)
        {
            LigneCommande obj = _service.GetLigneCommandeById(id);
            if (obj == null)
            {
                return NotFound();
            }
            _service.DeleteLigneCommande(obj);
            return NoContent();
        }


    }
}
