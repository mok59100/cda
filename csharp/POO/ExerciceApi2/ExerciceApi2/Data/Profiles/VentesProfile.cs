using AutoMapper;
using ExerciceApi2.Data.Dtos;
using ExerciceApi2.Data.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace ExerciceApi2.Data.Profiles
{
    public class VentesProfile : Profile
    {
        public VentesProfile()
        {
            CreateMap<VentesDTO,Ventes>();
            CreateMap<Ventes,VentesDTO > ();
        }
    }
}
