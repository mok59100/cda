using AutoMapper;
using Projet_Gestion_Stocks.Data.Dtos;
using Projet_Gestion_Stocks.Data.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Projet_Gestion_Stocks.Data.Profiles
{
   public class CategoriesProfile :Profile
    {
        public CategoriesProfile()

        {
            CreateMap<Categories, CategoriesDTO>();
            CreateMap<CategoriesDTO, Categories>();
            CreateMap<Categories, CategoriesDTOIn>();
            CreateMap<CategoriesDTOIn, Categories>();
            CreateMap<Categories, CategoriesDTOOut>();
            CreateMap<CategoriesDTOOut, Categories>();
            CreateMap<Categories, CategoriesDTOOutPoduitsArticles>();
            CreateMap<CategoriesDTOOutPoduitsArticles, Categories>();
        }


    }

}

