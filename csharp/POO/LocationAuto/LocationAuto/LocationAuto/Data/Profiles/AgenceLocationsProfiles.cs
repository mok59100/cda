using AutoMapper;
using LocationAuto.Data;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using LocationAuto.Data.Models;

namespace LocationAuto.Profiles
{
    public class AgenceLocationsProfiles : Profile
    {

        public AgenceLocationsProfiles()



        {

            CreateMap<AgenceLocations, AgenceLocationsDTO>();
            CreateMap<AgenceLocationsDTO, AgenceLocations>();

            CreateMap<AgenceLocations, AgenceLocationsDTOOut>();
            CreateMap<AgenceLocationsDTOOut, AgenceLocations>();

            CreateMap<AgenceLocations,AgenceLocationsDTOOutAvecLocation>();
            CreateMap<AgenceLocationsDTOOutAvecLocation, AgenceLocations>();



        }
    }
}
