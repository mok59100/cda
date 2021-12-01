using AutoMapper;
using LocationAuto.Data;
using Microsoft.CodeAnalysis;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;


namespace LocationAuto.Profiles
{
    public class LocationProfiles : Profile
    {
        public LocationProfiles()
        {
            CreateMap<Location, LocationDTO>();
            CreateMap<LocationDTO, Location>();
            CreateMap<Location, LocationDTOOut>();
            CreateMap<LocationDTOOut, Location>();
            CreateMap<Location, LocationDTOOutVoiture>();
            CreateMap<LocationDTOOutVoiture, Location>();
            CreateMap<Location, LocationDTOOutClient>();
            CreateMap<LocationDTOOutClient, Location>();
            CreateMap<Location, LocationDTOOutVoitureClient>();
            CreateMap<LocationDTOOutVoitureClient, Location>();
        }









    }
}
