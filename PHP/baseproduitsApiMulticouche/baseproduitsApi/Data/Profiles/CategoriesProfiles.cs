using AutoMapper;
using baseproduitsApi.Data.Dtos;
using baseproduitsApi.Data.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace baseproduitsApi.Data.Profiles
{
    public class CategoriesProfiles : Profile
    {

        public CategoriesProfiles()
        {
            CreateMap<Categorie, CategorieDTO>();
            CreateMap<CategorieDTO, Categorie>();
        }
    }


}

