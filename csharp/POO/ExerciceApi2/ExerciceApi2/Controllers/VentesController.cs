using AutoMapper;
using ExerciceApi2.Data.Dtos;
using ExerciceApi2.Data.Models;
using ExerciceApi2.Data.Profiles;
using ExerciceApi2.Data.Services;
using ExerciceApi2.Helpers;

using Microsoft.AspNetCore.Mvc;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;


namespace ExerciceApi2.Controllers
{
    [Route("api/Ventes")]
    [ApiController]
    public class VentesController : ControllerBase
    {

        private readonly VentesService _service;
        private readonly IMapper _mapper;
        public VentesController(VentesService service, IMapper mapper)
        {
            _service = service;
            _mapper = mapper;
        }

        [HttpGet]
        public ActionResult<IEnumerable<VentesDTO>> GetAllVentes()
        {
            IEnumerable<Ventes>listeVentes = _service.GetAllVentes();
            return Ok(_mapper.Map<IEnumerable<VentesDTO>>(listeVentes));
        }

        
      
       
    }
}
