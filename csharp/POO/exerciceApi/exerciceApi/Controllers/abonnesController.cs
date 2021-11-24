
using exerciceApi.Data.Dtos;
using exerciceApi.Data.Models;
using exerciceApi.Data.Services;
using exerciceApi.Helpers;
using AutoMapper;
using Microsoft.AspNetCore.JsonPatch;
using Microsoft.AspNetCore.Mvc;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace exerciceApi.Controllers
{
    [Route("api/abonnes")]
    //[Route("api/[controller]")]
    [ApiController]
    public class abonnesController : ControllerBase
    {

        private readonly AbonnesServices _service;
        private readonly IMapper _mapper;
        public abonnesController(AbonnesServices service, IMapper mapper)
        {
            _service = service;
            _mapper = mapper;
        }
        //GET api/abonnes
        [HttpGet]
        public ActionResult<IEnumerable<AbonnesDTO>> getAllabonne()
        {
            var listeabonnes = _service.GetAllAbonne();
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
        //POST api/abonnes
        [HttpPost]
        public ActionResult<AbonnesDTO> Createabonne(Abonne abonne)
        {
            //on ajoute l’objet à la base de données
            _service.Addabonnes(abonne);
            //on retourne le chemin de findById avec l'objet créé
            return CreatedAtRoute(nameof(GetAbonneById), new
            {
                Id =
         abonne.IdAbonne
            }, abonne);
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
        //PATCH api/abonnes/{id}
        [HttpPatch("{id}")]
        public ActionResult PartialabonneUpdate(int id, JsonPatchDocument<Abonne>
       patchDoc)
        {
            var abonneFromRepo = _service.GetAbonneById(id);
            if (abonneFromRepo == null)
            {
                return NotFound();
            }
            var abonneToPatch = _mapper.Map<Abonne>(abonneFromRepo);
            patchDoc.ApplyTo(abonneToPatch, ModelState);
            if (!TryValidateModel(abonneToPatch))
            {
                return ValidationProblem(ModelState);
            }
            _mapper.Map(abonneToPatch, abonneFromRepo);
            _service.UpdateAbonne(abonneFromRepo);
            return NoContent();
        }
        //DELETE api/abonnes/{id}
        [HttpDelete("{id}")]
        public ActionResult Deleteabonne(int id)
        {
            var abonneModelFromRepo = _service.GetAbonneById(id);
            if (abonneModelFromRepo == null)
            {
                return NotFound();
            }
            _service.Deleteabonne(abonneModelFromRepo);
            return NoContent();
        }
    }
}
