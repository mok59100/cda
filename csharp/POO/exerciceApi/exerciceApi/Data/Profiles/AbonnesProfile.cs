using AutoMapper;
using exerciceApi.Data.Dtos;
using exerciceApi.Data.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace exerciceApi.Data.Profiles
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
