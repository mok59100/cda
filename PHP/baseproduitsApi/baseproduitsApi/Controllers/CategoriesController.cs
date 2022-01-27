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
    public class CategoriesController:ControllerBase
    {
        private readonly CategoriesServices _service;
        private readonly IMapper _mapper;

        public CategoriesController(CategoriesServices service, IMapper mapper)
        {
            _service = service;
            _mapper = mapper;
        }

        //GET api/Categories
        [EnableCors("toto")]
        [HttpGet]
        public ActionResult<IEnumerable<CategorieDTO>> GetAllCategories()
        {
            IEnumerable<Categorie> listeCategories = _service.GetAllCategories();
            return Ok(_mapper.Map<IEnumerable<CategorieDTO>>(listeCategories));
        }

        //GET api/Categories/{i}
        [HttpGet("{id}", Name = "GetCategorieById")]
        public ActionResult<CategorieDTO> GetCategorieById(int id)
        {
            Categorie commandItem = _service.GetCategorieById(id);
            if (commandItem != null)
            {
                return Ok(_mapper.Map<CategorieDTO>(commandItem));
            }
            return NotFound();
        }

        //POST api/Categories
        [EnableCors("toto")]
        [HttpPost]
        public ActionResult<CategorieDTO> 
            CreateCategorie(CategorieDTO obj)
        {
            _service.AddCategorie(_mapper.Map<Categorie>(obj));
            
            return CreatedAtRoute(nameof(GetCategorieById), new { Id = obj.IdCategorie }, obj);
        }

        //POST api/Categories/{id}
        [EnableCors("toto")]
        [HttpPut("{id}")]
        public ActionResult UpdateCategorie(int id, CategorieDTO obj)
        {
            Categorie objFromRepo = _service.GetCategorieById(id);
            if (objFromRepo == null)
            {
                return NotFound();
            }
            _mapper.Map(obj, objFromRepo);
            _service.UpdateCategorie(objFromRepo);
            return NoContent();
        }


        //DELETE api/Categories/{id}
        [EnableCors("toto")]
        [HttpDelete("{id}")]
        public ActionResult DeleteCategorie(int id)
        {
            Categorie obj = _service.GetCategorieById(id);
            if (obj == null)
            {
                return NotFound();
            }
            _service.DeleteCategorie(obj);
            return NoContent();
        }




    }
}
