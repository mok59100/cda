using AutoMapper;
using Microsoft.AspNetCore.Mvc;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using VillageGreen.Data.DTOs;
using VillageGreen.Data.Models;
using VillageGreen.Data.Services;

namespace VillageGreen.Data.Controllers
{
    class UsersController:ControllerBase
    {
        private readonly UsersService _service;
        private readonly IMapper _mapper;

        public UsersController(UsersService service, IMapper mapper)
        {
            _service = service;
            _mapper = mapper;
        }

        //GET api/Users
        [HttpGet]
        public ActionResult<IEnumerable<UserDTOOut>> GetAllUsers()
        {
            IEnumerable<User> listeUsers = _service.GetAllUsers();
            return Ok(_mapper.Map<IEnumerable<UserDTOOut>>(listeUsers));
        }

        //GET api/Users/{i}
        [HttpGet("{id}", Name = "GetUserById")]
        public ActionResult<UserDTOOut> GetUserById(int id)
        {
            User commandItem = _service.GetUserById(id);
            if (commandItem != null)
            {
                return Ok(_mapper.Map<UserDTOOut>(commandItem));
            }
            return NotFound();
        }

        //POST api/Users
        [HttpPost]
        public ActionResult<UserDTOOut> CreateUser(UserDTOIn objIn)
        {
            User obj = _mapper.Map<User>(objIn);
            _service.AddUser(obj);
            return CreatedAtRoute(nameof(GetUserById), new { Id = obj.IdUser }, obj);
        }

        //POST api/Users/{id}
        [HttpPut("{id}")]
        public ActionResult UpdateUser(int id, UserDTOIn obj)
        {
            User objFromRepo = _service.GetUserById(id);
            if (objFromRepo == null)
            {
                return NotFound();
            }
            _mapper.Map(obj, objFromRepo);
            _service.UpdateUser(objFromRepo);
            return NoContent();
        }

       

        //DELETE api/Users/{id}
        [HttpDelete("{id}")]
        public ActionResult DeleteUser(int id)
        {
            User obj = _service.GetUserById(id);
            if (obj == null)
            {
                return NotFound();
            }
            _service.DeleteUser(obj);
            return NoContent();
        }


    }
}
