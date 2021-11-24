using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using ExerciceAPI.Data.Dtos;
using ExerciceAPI.Data.Models;
using AutoMapper;
namespace ExerciceAPI.Data.Profiles
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
