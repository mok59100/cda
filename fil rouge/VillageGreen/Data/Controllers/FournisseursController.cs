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
    class FournisseursController :ControllerBase
    {
        private readonly FournisseursService _service;
        private readonly IMapper _mapper;

        public FournisseursController(FournisseursService service, IMapper mapper)
        {
            _service = service;
            _mapper = mapper;
        }

        //GET api/NomController
        [HttpGet]
        public ActionResult<IEnumerable<FournisseurDTOOut>> GetAllFournisseurs()
        {
            IEnumerable<Fournisseur> listeFournisseur = _service.GetAllFournisseurs();
            return Ok(_mapper.Map<IEnumerable<FournisseurDTOOut>>(listeFournisseur));
        }

        //GET api/NomController/{i}
        [HttpGet("{id}", Name = "GetFournisseurById")]
        public ActionResult<FournisseurDTOOut> GetFournisseurById(int id)
        {
            Fournisseur commandItem = _service.GetFournisseurById(id);
            if (commandItem != null)
            {
                return Ok(_mapper.Map<FournisseurDTOOut>(commandItem));
            }
            return NotFound();
        }

        //POST api/NomController
        [HttpPost]
        public ActionResult<Fournisseur> CreateFournisseur(FournisseurDTOIn objIn)
        {
            Fournisseur obj = _mapper.Map<Fournisseur>(objIn);
            _service.AddFournisseur(obj);
            return CreatedAtRoute(nameof(GetFournisseurById), new { Id = obj.IdFournisseur }, obj);
        }

        //POST api/NomController/{id}
        [HttpPut("{id}")]
        public ActionResult UpdateFournisseur(int id, FournisseurDTOIn obj)
        {
            Fournisseur objFromRepo = _service.GetFournisseurById(id);
            if (objFromRepo == null)
            {
                return NotFound();
            }
            _mapper.Map(obj, objFromRepo);
            _service.UpdateFournisseur(objFromRepo);
            return NoContent();
        }

        
        //DELETE api/NomController/{id}
        [HttpDelete("{id}")]
        public ActionResult DeleteFournisseur(int id)
        {Fournisseur obj = _service.GetFournisseurById(id);
            if (obj == null)
            {
                return NotFound();
            }
            _service.DeleteFournisseur(obj);
            return NoContent();
        }


    }
}
