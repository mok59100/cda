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
    class HotelsController : ControllerBase
    {
        private readonly HotelsServices _service;
        private readonly IMapper _mapper;

        public HotelsController(Ecf2Context _context)
        {
            {
                _service = new HotelsServices(_context);
                var config = new MapperConfiguration(cfg =>
                {
                    cfg.AddProfile<HotelsProfiles>();
                    cfg.AddProfile<ChambresProfiles>();

                });
                _mapper = config.CreateMapper();
            }
        }

        //GET api/NomController
        [HttpGet]
        public IEnumerable<HotelsDTOOut> GetAllHotels()
        {
            IEnumerable<Hotel> ListeHotels = _service.GetAllHotels();
            return _mapper.Map<IEnumerable<HotelsDTOOut>>(ListeHotels);
        }

        //GET api/NomController
        [HttpGet]
        public IEnumerable<HotelsDTOOutAvecChambres> GetAllHotelsAvecChambres()
        {
            IEnumerable<Hotel> ListeHotels = _service.GetAllHotels();
            return _mapper.Map<IEnumerable<HotelsDTOOutAvecChambres>>(ListeHotels);
        }

        //GET api/NomController/{i}
        [HttpGet("{id}", Name = "GetHotelById")]
        public ActionResult<HotelsDTOOutAvecChambres> GetHotelById(int id)
        {
            Hotel commandItem = _service.GetHotelById(id);
            if (commandItem != null)
            {
                return Ok(_mapper.Map<HotelsDTOOutAvecChambres>(commandItem));
            }
            return NotFound();
        }

        //POST api/NomController
        [HttpPost]
        public ActionResult<HotelsDTOOut> CreateHotel(HotelsDTOIn objIn)
        {
            Hotel obj = _mapper.Map<Hotel>(objIn);
            _service.AddHotel(obj);
            return CreatedAtRoute(nameof(GetHotelById), new { Id = obj.IdHotel }, obj);
        }

        //POST api/NomController/{id}
        [HttpPut("{id}")]
        public ActionResult UpdateHotel(int id, HotelsDTOIn obj)
        {
            Hotel objFromRepo = _service.GetHotelById(id);
            if (objFromRepo == null)
            {
                return NotFound();
            }
            _mapper.Map(obj, objFromRepo);
            _service.UpdateHotel(objFromRepo);
            return NoContent();
        }

        
         

        //DELETE api/NomController/{id}
        [HttpDelete("{id}")]
        public ActionResult DeleteHotel(int id)
        {
            Hotel obj = _service.GetHotelById(id);
            if (obj == null)
            {
                return NotFound();
            }
            _service.DeleteHotel(obj);
            return NoContent();
        }


    }
}
