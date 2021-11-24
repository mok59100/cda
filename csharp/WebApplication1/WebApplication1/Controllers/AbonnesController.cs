using AutoMapper;
using Microsoft.AspNetCore.Mvc;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using WebApplication1.Data.Dtos;
using WebApplication1.Data.Models;
using WebApplication1.Data.Services;

namespace WebApplication1.Controllers
{
    [Route("api/Abonnes")]
    [ApiController]
    public class AbonnesController
    {
        private readonly AbonnesServices _service;
        private readonly IMapper _mapper;
        public AbonnesController(AbonnesServices service, IMapper mapper)
        {
            _service = service;
            _mapper = mapper;
        }


        [HttpGet]
        public IEnumerable<AbonnesDTO> test()
        {
            var listeabonnes = _service.GetAllAbonne();
            return _mapper(    listeabonnes;
        }
    }
}
