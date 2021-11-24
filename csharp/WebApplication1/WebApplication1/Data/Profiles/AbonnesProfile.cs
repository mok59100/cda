using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using WebApplication1.Data.Dtos;
using WebApplication1.Data.Models;
using AutoMapper;
namespace WebApplication1.Data.Profiles
{
    public class AbonnesProfile : Profile
    {
        public AbonnesProfile()
        {
            CreateMap<Abonnes, AbonnesDTO>();
            CreateMap<AbonnesDTO, Abonnes>();
        }


    }
}
