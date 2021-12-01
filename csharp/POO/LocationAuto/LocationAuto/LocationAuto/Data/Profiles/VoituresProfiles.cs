using AutoMapper;
using LocationAuto.Data;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using LocationAuto.Data.Models;

namespace LocationAuto.Profiles
{
    public class VoituresProfiles :Profile
    {
      public VoituresProfiles()
        {

            CreateMap<Voitures, VoituresDTO>();
            CreateMap<VoituresDTO, Voitures>();
            CreateMap<Voitures, VoituresDTOIn>();
            CreateMap<VoituresDTOIn, Voitures>();
            CreateMap<Voitures, VoituresDTOOut>();
            CreateMap<VoituresDTOOut, Voitures>();
            
            CreateMap<Voitures, VoituresDTOOutAgence>();
            CreateMap<VoituresDTOOutAgence, Voitures>();
            CreateMap<Voitures, VoituresDTOOutLocation>();
            CreateMap<VoituresDTOOutLocation, Voitures>();

        }







    }
}
