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
    class RolesController :ControllerBase
    {
        private readonly RolesService _service;
        private readonly IMapper _mapper;

        public RolesController(RolesService service, IMapper mapper)
        {
            _service = service;
            _mapper = mapper;
        }

        //GET api/Roles
        [HttpGet]
        public ActionResult<IEnumerable<RoleDTOOut>> GetAllRoles()
        {
            IEnumerable<Role> listeRoles = _service.GetAllRoles();
            return Ok(_mapper.Map<IEnumerable<RoleDTOOut>>(listeRoles));
        }

        //GET api/Roles/{i}
        [HttpGet("{id}", Name = "GetRoleById")]
        public ActionResult<RoleDTOOut> GetRoleById(int id)
        {
            Role commandItem = _service.GetRoleById(id);
            if (commandItem != null)
            {
                return Ok(_mapper.Map<RoleDTOOut>(commandItem));
            }
            return NotFound();
        }

        //POST api/Roles
        [HttpPost]
        public ActionResult<RoleDTOOut> CreateRole(RoleDTOIn objIn)
        {
            Role obj = _mapper.Map<Role>(objIn);
            _service.AddRole(obj);
            return CreatedAtRoute(nameof(GetRoleById), new { Id = obj.IdRole }, obj);
        }

        //POST api/Roles/{id}
        [HttpPut("{id}")]
        public ActionResult UpdateRole(int id, RoleDTOIn obj)
        {
            Role objFromRepo = _service.GetRoleById(id);
            if (objFromRepo == null)
            {
                return NotFound();
            }
            _mapper.Map(obj, objFromRepo);
            _service.UpdateRole(objFromRepo);
            return NoContent();
        }

        //DELETE api/Roles/{id}
        [HttpDelete("{id}")]
        public ActionResult DeleteRole(int id)
        {
            Role obj = _service.GetRoleById(id);
            if (obj == null)
            {
                return NotFound();
            }
            _service.DeleteRole(obj);
            return NoContent();
        }


    }
}
