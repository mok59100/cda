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
    class ArticlesController: ControllerBase
    {
        private readonly ArticlesService _service;
        private readonly IMapper _mapper;

        public ArticlesController(MyDbContext _context)
        {
            _service = new ArticlesService(_context);
            var config = new MapperConfiguration(cfg =>
            {
                cfg.AddProfile<ArticlesProfile>();
            });
            _mapper = config.CreateMapper();
        }

        //GET api/Articles
        [HttpGet]
        public ActionResult<IEnumerable<ArticlesDTO>> GetAllArticles()
        {
            IEnumerable<Articles> listeArticles = _service.GetAllArticles();
            return Ok(_mapper.Map<IEnumerable<ArticlesDTO>>(listeArticles));
        }

        //GET api/Articles/{i}
        [HttpGet("{id}", Name = "GetArticlesById")]
        public ActionResult<ArticlesDTO> GetArticlesById(int id)
        {
            Articles commandItem = _service.GetArticlesById(id);
            if (commandItem != null)
            {
                return Ok(_mapper.Map<ArticlesDTO>(commandItem));
            }
            return NotFound();
        }

        //POST api/Articles
        [HttpPost]
        public ActionResult<ArticlesDTO> CreateArticles(Articles obj)
        {
            _service.AddArticles(obj);
            return CreatedAtRoute(nameof(GetArticlesById), new { Id = obj.IdArticle }, obj);
        }

        //POST api/Articles/{id}
        [HttpPut("{id}")]
        public ActionResult UpdateArticles(int id, ArticlesDTO obj)
        {
            Articles objFromRepo = _service.GetArticlesById(id);
            if (objFromRepo == null)
            {
                return NotFound();
            }
            _mapper.Map(obj, objFromRepo);
            _service.UpdateArticles(objFromRepo);
            return NoContent();
        }

        // Exemple d'appel
        // [{
        // "op":"replace",
        // "path":"",
        // "value":""
        // }]
        //PATCH api/Articles/{id}
        [HttpPatch("{id}")]
        public ActionResult PartialArticlesUpdate(int id, JsonPatchDocument<Articles> patchDoc)
        {
            Articles objFromRepo = _service.GetArticlesById(id);
            if (objFromRepo == null)
            {
                return NotFound();
            }
            Articles objToPatch = _mapper.Map<Articles>(objFromRepo);
            patchDoc.ApplyTo(objToPatch, ModelState);
            if (!TryValidateModel(objToPatch))
            {
                return ValidationProblem(ModelState);
            }
            _mapper.Map(objToPatch, objFromRepo);
            _service.UpdateArticles(objFromRepo);
            return NoContent();
        }

        //DELETE api/Articles/{id}
        [HttpDelete("{id}")]
        public ActionResult DeleteArticles(int id)
        {
            Articles obj = _service.GetArticlesById(id);
            if (obj == null)
            {
                return NotFound();
            }
            _service.DeleteArticles(obj);
            return NoContent();
        }


    }
}
