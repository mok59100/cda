using AutoMapper;
using baseproduitsApi.Data.Dtos;
using baseproduitsApi.Data.Models;
using baseproduitsApi.Data.Services;
using Microsoft.AspNetCore.Cors;
using Microsoft.AspNetCore.Mvc;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace baseproduitsApi.Controllers
{
    [Route("api/[Controller]")]
    [ApiController]
    public class ProduitsController:ControllerBase
    {
        private readonly ProduitsServices _service;
        private readonly IMapper _mapper;

        public ProduitsController(ProduitsServices service, IMapper mapper)
        {
            _service = service;
            _mapper = mapper;
        }

        //GET api/Produits
        [EnableCors("toto")]
        [HttpGet]
        public ActionResult<IEnumerable<ProduitDTO>> GetAllProduits()
        {
            IEnumerable<Produit> listeProduits = _service.GetAllProduits();
            return Ok(_mapper.Map<IEnumerable<ProduitDTO>>(listeProduits));
        }

        //GET api/Produits/{i}
        [EnableCors("toto")]
        [HttpGet("{id}", Name = "GetProduitById")]
        public ActionResult<ProduitDTO> GetProduitById(int id)
        {
            Produit commandItem = _service.GetProduitById(id);
            if (commandItem != null)
            {
                return Ok(_mapper.Map<ProduitDTO>(commandItem));
            }
            return NotFound();
        }

        //POST api/Produits
        [EnableCors("toto")]
        [HttpPost]
        public ActionResult<ProduitDTO> CreateProduit(Produit obj)
        {
           
            _service.AddProduit(obj);
            return CreatedAtRoute(nameof(GetProduitById), new { Id = obj.IdProduit }, obj);
        }

        //POST api/Produits/{id}
        [EnableCors("toto")]
        [HttpPut("{id}")]
        public ActionResult UpdateProduit(int id, ProduitDTO obj)
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
