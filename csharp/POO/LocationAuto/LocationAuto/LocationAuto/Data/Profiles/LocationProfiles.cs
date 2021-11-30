using LocationAuto.Data;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using static Google.Protobuf.Reflection.SourceCodeInfo.Types;

namespace LocationAuto.Profiles
{
    public class LocationProfiles : Profile
    {
        public LocationProfiles()
        {
            CreateMap<Location, LocationDTO>();
            CreateMap<LocationDTO, Location>();
        }









    }
}
