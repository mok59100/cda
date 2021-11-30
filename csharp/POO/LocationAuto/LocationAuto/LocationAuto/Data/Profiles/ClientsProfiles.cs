using AutoMapper;
using LocationAuto.Data;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace LocationAuto.Profiles
{
    public class ClientsProfiles :Profile
    {
public ClientsProfiles()
        {
            CreateMap<Clients, ClientsDTO>();
            CreateMap<ClientsDTO, Clients>();
        }










    }
}
