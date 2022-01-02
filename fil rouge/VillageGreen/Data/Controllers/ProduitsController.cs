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
    class ProduitsController:ControllerBase
    {
        private readonly ProduitsService _service;
        private readonly IMapper _mapper;

        public ProduitsController(ProduitsService service, IMapper mapper)
        {
            _service = service;
            _mapper = mapper;
        }

        //GET api/Produits
        [HttpGet]
        public ActionResult<IEnumerable<ProduitDTOOut>> GetAllProduits()
        {
            IEnumerable<Produit> listeProduits = _service.GetAllProduits();
            return Ok(_mapper.Map<IEnumerable<ProduitDTOOut>>(listeProduits));
        }

        //GET api/Produits/{i}
        [HttpGet("{id}", Name = "GetProduitById")]
        public ActionResult<ProduitDTOOut> GetProduitById(int id)
        {
            Produit commandItem = _service.GetProduitById(id);
            if (commandItem != null)
            {
                return Ok(_mapper.Map<ProduitDTOOut>(commandItem));
            }
            return NotFound();
        }

        //POST api/Produits
        [HttpPost]
        public ActionResult<ProduitDTOOut> CreateProduit(ProduitDTOIn objIn)
        {
            Produit obj = _mapper.Map<Produit>(objIn);
            _service.AddProduit(obj);
            return CreatedAtRoute(nameof(GetProduitById), new { Id = obj.IdProduit }, obj);
        }

        //POST api/Produits/{id}
        [HttpPut("{id}")]
        public ActionResult UpdateProduit(int id, ProduitDTOIn obj)
        {
            Produit objFromRepo = _service.GetProduitById(id);
            if (objFromRepo == null)
            {
                return NotFound();
            }
            _mapper.Map(obj, objFromRepo);
            _service.UpdateProduit(objFromRepo);
            return NoContent();
        }

        
        //DELETE api/Produits/{id}
        [HttpDelete("{id}")]
        public ActionResult DeleteProduit(int id)
        {
            Produit obj = _service.GetProduitById(id);
            if (obj == null)
            {
                return NotFound();
            }
            _service.DeleteProduit(obj);
            return NoContent();
        }


    }
}
