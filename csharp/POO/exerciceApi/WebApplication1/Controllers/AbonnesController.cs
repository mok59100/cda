using AutoMapper;
using Microsoft.AspNetCore.Mvc;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using ExerciceAPI.Data.Dtos;
using ExerciceAPI.Data.Models;
using ExerciceAPI.Data.Services;
using ExerciceAPI.Helpers;

namespace ExerciceAPI.Controllers
{
    [Route("api/Abonnes")]
    [ApiController]
    public class AbonnesController : ControllerBase
    {
        private readonly AbonnesServices _service;
        private readonly IMapper _mapper;
        public AbonnesController(AbonnesServices service, IMapper mapper)
        {
            _service = service;
            _mapper = mapper;
        }

        [HttpGet]
        public ActionResult<IEnumerable<AbonnesDTO>> GetAllAbonnes()
        {
            var listeabonnes = _service.GetAllAbonnes();
            return Ok(_mapper.Map<IEnumerable<AbonnesDTO>>(listeabonnes));
        }

        //GET api/abonnes/{id}
        [HttpGet("{id}", Name = "GetAbonneById")]
        public ActionResult<AbonnesDTO> GetAbonneById(int id)
        {
            var commandItem = _service.GetAbonneById(id);
            if (commandItem != null)
            {
                return Ok(_mapper.Map<AbonnesDTO>(commandItem));
            }
            return NotFound();
        }

        //PUT api/personnes/{id}

        [HttpPut("{id}")]
        public ActionResult UpdateAbonne(int id, AbonnesDTO abonne)
        {
            var abonneFromRepo = _service.GetAbonneById(id);
            if (abonneFromRepo == null)
            {
                return NotFound();
            }
            abonneFromRepo.Dump();
            _mapper.Map(abonne, abonneFromRepo);
            abonneFromRepo.Dump();
            abonne.Dump();
            // inutile puisque la fonction ne fait rien, mais garde la cohérence
            _service.UpdateAbonne(abonneFromRepo);
            return NoContent();
        }

        //DELETE api/abonnes/{id}
        [HttpDelete("{id}")]
        public ActionResult DeleteAbonne(int id)
        {
            var abonneModelFromRepo = _service.GetAbonneById(id);
            if (abonneModelFromRepo == null)
            {
                return NotFound();
            }
            _service.DeleteAbonne(abonneModelFromRepo);
            return NoContent();
        }

        //POST api/abonnes
        [HttpPost]
        public ActionResult<AbonnesDTO> CreateAbonne(Abonnes abonne)
        {
            //on ajoute l’objet à la base de données
            _service.AddAbonnes(abonne);
            //on retourne le chemin de findById avec l'objet créé
            return CreatedAtRoute(nameof(GetAbonneById), new
            {
                Id =
         abonne.IdAbonne
            }, abonne);
        }
    }
}
