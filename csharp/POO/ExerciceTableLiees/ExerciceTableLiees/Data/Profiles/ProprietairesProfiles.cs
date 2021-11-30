using AutoMapper;
using ExerciceTableLiees.Data.Dtos;
using ExerciceTableLiees.Data.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace ExerciceTableLiees.Data.Profiles
{
    public class ProprietairesProfiles : Profile
    {
        public ProprietairesProfiles()
        {
            CreateMap <ProprietairesDTO, Proprietaire>(); 
            CreateMap <Proprietaire, ProprietairesDTO>();
            CreateMap<ProprietairesDTOIn, Proprietaire>();
            CreateMap<Proprietaire, ProprietairesDTOIn>();

        }
    }
}
