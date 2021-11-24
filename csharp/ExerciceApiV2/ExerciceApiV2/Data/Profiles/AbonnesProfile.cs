using AutoMapper;
using ExerciceApiV2.Data.Dtos;
using ExerciceApiV2.Data.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace ExerciceApiV2.Data.Profiles
{
    public class AbonnesProfile : Profile
    {
        public AbonnesProfile()
        {


            CreateMap<Abonne, AbonnesDTO>();
            CreateMap<AbonnesDTO, Abonne>();

        }
    }
}
