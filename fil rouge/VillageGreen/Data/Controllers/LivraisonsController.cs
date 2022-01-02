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
    class LivraisonsController:ControllerBase
    {
        private readonly LivraisonsService _service;
        private readonly IMapper _mapper;

        public LivraisonsController(LivraisonsService service, IMapper mapper)
        {
            _service = service;
            _mapper = mapper;
        }

        //GET api/Livraisons
        [HttpGet]
        public ActionResult<IEnumerable<LivraisonDTOOut>> GetAllLivraisons()
        {
            IEnumerable<Livraison> listeLivraisons = _service.GetAllLivraisons();
            return Ok(_mapper.Map<IEnumerable<LivraisonDTOOut>>(listeLivraisons));
        }

        //GET api/Livraisons/{i}
        [HttpGet("{id}", Name = "GetLivraisonById")]
        public ActionResult<LivraisonDTOOut> GetLivraisonById(int id)
        {
            Livraison commandItem = _service.GetLivraisonById(id);
            if (commandItem != null)
            {
                return Ok(_mapper.Map<LivraisonDTOOut>(commandItem));
            }
            return NotFound();
        }

        //POST api/Livraisons
        [HttpPost]
        public ActionResult<LivraisonDTOOut> CreateLivraison(LivraisonDTOIn objIn)
        {
            Livraison obj = _mapper.Map<Livraison>(objIn);
            _service.AddLivraison(obj);
            return CreatedAtRoute(nameof(GetLivraisonById), new { Id = obj.IdLivraison }, obj);
        }

        //POST api/Livraisons/{id}
        [HttpPut("{id}")]
        public ActionResult UpdateLivraison(int id, LivraisonDTOIn obj)
        {
            Livraison objFromRepo = _service.GetLivraisonById(id);
            if (objFromRepo == null)
            {
                return NotFound();
            }
            _mapper.Map(obj, objFromRepo);
            _service.UpdateLivraison(objFromRepo);
            return NoContent();
        }

        

        //DELETE api/Livraisons/{id}
        [HttpDelete("{id}")]
        public ActionResult DeleteLivraison(int id)
        {
            Livraison obj = _service.GetLivraisonById(id);
            if (obj == null)
            {
                return NotFound();
            }
            _service.DeleteLivraison(obj);
            return NoContent();
        }


    }
}
