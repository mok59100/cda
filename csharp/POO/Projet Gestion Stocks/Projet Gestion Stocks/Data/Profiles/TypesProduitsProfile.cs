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
    public class TypesProduitsProfile :Profile
    {

        public TypesProduitsProfile()

        {
            CreateMap<TypesProduits, TypesProduitsDTO>();
            CreateMap<TypesProduitsDTO, TypesProduits>();
            CreateMap<TypesProduits, TypesProduitsDTOIn>();
            CreateMap<TypesProduitsDTOIn, TypesProduits>();
            CreateMap<TypesProduits, TypesProduitsDTOOut>();
            CreateMap<TypesProduitsDTOOut, TypesProduits>();


        }

    }
}
