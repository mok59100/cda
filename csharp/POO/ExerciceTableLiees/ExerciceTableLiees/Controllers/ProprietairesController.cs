using AutoMapper;
using ExerciceTableLiees.Data.Dtos;
using ExerciceTableLiees.Data.Models;
using ExerciceTableLiees.Data.Services;

using Microsoft.AspNetCore.JsonPatch;
using Microsoft.AspNetCore.Mvc;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;


namespace ExerciceTableLiees.Controllers
{
    [Route("api/Proprietaires")]
    [ApiController]
    public class ProprietairesController : ControllerBase
    {

        private readonly ProprietairesServices _service;
        private readonly IMapper _mapper;

        public ProprietairesController(ProprietairesServices service, IMapper mapper)
        {
            _service = service;
            _mapper = mapper;
        }

        //GET api/proprietaires
        [HttpGet]
        public ActionResult<IEnumerable<ProprietairesDTO>> GetAllProprietaires()
        {
            IEnumerable<Proprietaire> listeProprietaires = _service.GetAllProprietaire();
            return Ok(_mapper.Map<IEnumerable<ProprietairesDTO>>(listeProprietaires));
        }

        //GET api//{i}
        [HttpGet("{id}", Name = "GetProprietairesById")]
        public ActionResult<ProprietairesDTO> GetProprietaireById(int id)
        {
            Proprietaire commandItem = _service.GetProprietaireById(id);
            if (commandItem != null)
            {
                return Ok(_mapper.Map<ProprietairesDTO>(commandItem));
            }
            return NotFound();
    }

        //POST api/
        [HttpPost]
        public ActionResult<ProprietairesDTO> CreateProprietaire(Proprietaire obj)
        {
            _service.AddProprietaire(obj);
            return CreatedAtRoute(nameof(GetProprietaireById), new { Id = obj.IdProprio }, obj);
        }

        //POST api//{id}
        [HttpPut("{id}")]
        public ActionResult UpdateProprietaire(int id, ProprietairesDTO obj)
        {
        Proprietaire objFromRepo = _service.GetProprietaireById(id);
            if (objFromRepo == null)
            {
                return NotFound();
            }
            _mapper.Map(obj, objFromRepo);
            _service.UpdateProprietaire(objFromRepo);
            return NoContent();
        }

        // Exemple d'appel
        // [{
        // "op":"replace",
        // "path":"",
        // "value":""
        // }]
        //PATCH api//{id}
        [HttpPatch("{id}")]
        public ActionResult PartialProprietaireUpdate(int id, JsonPatchDocument<Proprietaire> patchDoc)
        {
        Proprietaire objFromRepo = _service.GetProprietaireById(id);
            if (objFromRepo == null)
            {
                return NotFound();
            }
        Proprietaire objToPatch = _mapper.Map<Proprietaire>(objFromRepo);
            patchDoc.ApplyTo(objToPatch, ModelState);
            if (!TryValidateModel(objToPatch))
            {
                return ValidationProblem(ModelState);
            }
            _mapper.Map(objToPatch, objFromRepo);
            _service.UpdateProprietaire(objFromRepo);
            return NoContent();
        }

        //DELETE api//{id}
        [HttpDelete("{id}")]
        public ActionResult DeleteProprietaire(int id)
        {
        Proprietaire obj = _service.GetProprietaireById(id);
            if (obj == null)
            {
                return NotFound();
            }
            _service.DeleteProprietaire(obj);
            return NoContent();
        }


    }
}
