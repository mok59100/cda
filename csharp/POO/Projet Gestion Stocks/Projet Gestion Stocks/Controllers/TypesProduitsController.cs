using AutoMapper;
using Microsoft.AspNetCore.JsonPatch;
using Microsoft.AspNetCore.Mvc;
using Projet_Gestion_Stocks.Data;
using Projet_Gestion_Stocks.Data.Dtos;
using Projet_Gestion_Stocks.Data.Models;
using Projet_Gestion_Stocks.Data.Profiles;
using Projet_Gestion_Stocks.Data.Services;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Projet_Gestion_Stocks.Controllers
{
    class TypesProduitsController: ControllerBase
    {

        private readonly TypesProduitsService _service;
        private readonly IMapper _mapper;

        public TypesProduitsController(MyDbContext _context)
        {
            _service = new TypesProduitsService(_context);
            var config = new MapperConfiguration(cfg =>
            {
                cfg.AddProfile<TypesProduitsProfile>();
            });
            _mapper = config.CreateMapper();
        }

        //GET api/NomController
        [HttpGet]
        public ActionResult<IEnumerable<TypesProduitsDTO>> GetAllTypesProduits()
        {
            IEnumerable<TypesProduits> listeTypesProduits = _service.GetAllTypesProduits();
            return Ok(_mapper.Map<IEnumerable<TypesProduitsDTO>>(listeTypesProduits));
        }

        //GET api/NomController/{i}
        [HttpGet("{id}", Name = "GetNomModelById")]
        public ActionResult<TypesProduitsDTO> GetTypesProduitsById(int id)
        {
            TypesProduits commandItem = _service.GetTypesProduitsById(id); 
            if (commandItem != null)
            {
                return Ok(_mapper.Map<TypesProduitsDTO>(commandItem));
            }
            return NotFound();
        }

        //POST api/NomController
        [HttpPost]
        public ActionResult<TypesProduitsDTO> CreateTypesProduits(TypesProduits obj)
        {
            _service.AddTypesProduits(obj);
            return CreatedAtRoute(nameof(GetTypesProduitsById), new { Id = obj.IdTypeProduit }, obj);
        }

        //POST api/NomController/{id}
        [HttpPut("{id}")]
        public ActionResult UpdateTypesProduits(int id, TypesProduitsDTO obj)
        {
            TypesProduits objFromRepo = _service.GetTypesProduitsById(id);
            if (objFromRepo == null)
            {
                return NotFound();
            }
            _mapper.Map(obj, objFromRepo);
            _service.UpdateTypesProduits(objFromRepo);
            return NoContent();
        }

        // Exemple d'appel
        // [{
        // "op":"replace",
        // "path":"",
        // "value":""
        // }]
        //PATCH api/NomController/{id}
        [HttpPatch("{id}")]
        public ActionResult PartialTypesProduitsUpdate(int id, JsonPatchDocument<TypesProduits> patchDoc)
        {
            TypesProduits objFromRepo = _service.GetTypesProduitsById(id);
            if (objFromRepo == null)
            {
                return NotFound();
            }
            TypesProduits objToPatch = _mapper.Map<TypesProduits>(objFromRepo);
            patchDoc.ApplyTo(objToPatch, ModelState);
            if (!TryValidateModel(objToPatch))
            {
                return ValidationProblem(ModelState);
            }
            _mapper.Map(objToPatch, objFromRepo);
            _service.UpdateTypesProduits(objFromRepo);
            return NoContent();
        }

        //DELETE api/NomController/{id}
        [HttpDelete("{id}")]
        public ActionResult DeleteTypesProduits(int id)
        {
            TypesProduits obj = _service.GetTypesProduitsById(id);
            if (obj == null)
            {
                return NotFound();
            }
            _service.DeleteTypesProduits(obj);
            return NoContent();
        }


    }
}
