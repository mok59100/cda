using AutoMapper;
using ECF2.Data.Dtos;
using ECF2.Data.Models;
using ECF2.Data.Profiles;
using ECF2.Data.Services;
using Microsoft.AspNetCore.Mvc;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ECF2.Data.Controllers
{
    class ChambresController :ControllerBase
    {

        private readonly ChambresServices _service;
        private readonly IMapper _mapper;

        public ChambresController(ecf2Context _context)
        {
            {
                _service = new ChambresServices(_context);
                var config = new MapperConfiguration(cfg =>
                {
                    cfg.AddProfile<ChambresProfiles>();
                    cfg.AddProfile<HotelsProfiles>();

                });
                _mapper = config.CreateMapper();
            }
        }

        //GET api/NomController
        [HttpGet]
        public IEnumerable<ChambresDTOOut> GetAllChambres()
        {
            IEnumerable<Chambre> listeNomController = _service.GetAllChambres();
            return _mapper.Map<IEnumerable<ChambresDTOOut>>(listeNomController));
        }

        //GET api/NomController
        [HttpGet]
        public IEnumerable<ChambresDTOOutAvecHotel> GetAllChambresAvecHotel()
        {
            IEnumerable<Chambre> listeNomController = _service.GetAllChambres();
            return _mapper.Map<IEnumerable<ChambresDTOOutAvecHotel>>(listeNomController));
        }
        //GET api/NomController/{i}
        [HttpGet("{id}", Name = "GetChambreById")]
        public ActionResult<ChambresDTOOutAvecHotel> GetChambreById(int id)
        {
            Chambre commandItem = _service.GetChambreById(id);
            if (commandItem != null)
            {
                return Ok(_mapper.Map<ChambresDTOOutAvecHotel>(commandItem));
            }
            return NotFound();
        }

        //POST api/NomController
        [HttpPost]
        public ActionResult<ChambresDTOOut> CreateChambre(ChambresDTOIn objIn)
        {
            Chambre obj = _mapper.Map<Chambre>(objIn);
            _service.AddChambre(obj);
            return CreatedAtRoute(nameof(GetChambreById), new { Id = obj.IdChambre }, obj);
        }

        //POST api/NomController/{id}
        [HttpPut("{id}")]
        public ActionResult UpdateChambre(int id, ChambresDTOIn obj)
        {
            Chambre objFromRepo = _service.GetChambreById(id);
            if (objFromRepo == null)
            {
                return NotFound();
            }
            _mapper.Map(obj, objFromRepo);
            _service.UpdateChambre(objFromRepo);
            return NoContent();
        }

       

        //DELETE api/NomController/{id}
        [HttpDelete("{id}")]
        public ActionResult DeleteChambre(int id)
        {
            Chambre obj = _service.GetChambreById(id);
            if (obj == null)
            {
                return NotFound();
            }
            _service.DeleteChambre(obj);
            return NoContent();
        }


    }
}
