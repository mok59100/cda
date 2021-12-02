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
    class CategoriesController :ControllerBase
    {
        private readonly CategoriesService _service;
        private readonly IMapper _mapper;

        public CategoriesController(MyDbContext _context)
        {
            _service = new CategoriesService(_context);
            var config = new MapperConfiguration(cfg =>
            {
                cfg.AddProfile<CategoriesProfile>();
            });
            _mapper = config.CreateMapper();
        }
        

        //GET api/Categories
        [HttpGet]
        public ActionResult<IEnumerable<CategoriesDTO>> GetAllCategories()
        {
            IEnumerable<Categories> listeCategories = _service.GetAllCategories();
            return Ok(_mapper.Map<IEnumerable<CategoriesDTO>>(listeCategories));
        }

        //GET api/Categories/{i}
        [HttpGet("{id}", Name = "GetCategoriesById")]
        public ActionResult<CategoriesDTO> GetCategoriesById(int id)
        {
            Categories commandItem = _service.GetCategoriesById(id);
            if (commandItem != null)
            {
                return Ok(_mapper.Map<CategoriesDTO>(commandItem));
            }
            return NotFound();
        }

        //POST api/Categories
        [HttpPost]
        public ActionResult<CategoriesDTO> CreateCategories(Categories obj)
        {
            _service.AddCategories(obj);
            return CreatedAtRoute(nameof(GetCategoriesById), new { Id = obj.IdCategorie }, obj);
        }

        //POST api/Categories/{id}
        [HttpPut("{id}")]
        public ActionResult UpdateCategories(int id, CategoriesDTO obj)
        {
            Categories objFromRepo = _service.GetCategoriesById(id);
            if (objFromRepo == null)
            {
                return NotFound();
            }
            _mapper.Map(obj, objFromRepo);
            _service.UpdateCategories(objFromRepo);
            return NoContent();
        }

        // Exemple d'appel
        // [{
        // "op":"replace",
        // "path":"",
        // "value":""
        // }]
        //PATCH api/Categories/{id}
        [HttpPatch("{id}")]
        public ActionResult PartialCategoriesUpdate(int id, JsonPatchDocument<Categories> patchDoc)
        {
            Categories objFromRepo = _service.GetCategoriesById(id);
            if (objFromRepo == null)
            {
                return NotFound();
            }
            Categories objToPatch = _mapper.Map<Categories>(objFromRepo);
            patchDoc.ApplyTo(objToPatch, ModelState);
            if (!TryValidateModel(objToPatch))
            {
                return ValidationProblem(ModelState);
            }
            _mapper.Map(objToPatch, objFromRepo);
            _service.UpdateCategories(objFromRepo);
            return NoContent();
        }

        //DELETE api/Categories/{id}
        [HttpDelete("{id}")]
        public ActionResult DeleteCategories(int id)
        {
            Categories obj = _service.GetCategoriesById(id);
            if (obj == null)
            {
                return NotFound();
            }
            _service.DeleteCategories(obj);
            return NoContent();
        }


    }
}
