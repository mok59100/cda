using AutoMapper;
using LocationAuto.Data;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using LocationAuto.Data.Models;

namespace LocationAuto.Profiles
{
    public class ClientsProfiles :Profile
    {
public ClientsProfiles()
        {
            CreateMap<Clients, ClientsDTO>();
            CreateMap<ClientsDTO, Clients>(); 
            CreateMap<Clients, ClientsDTOIn>();
            CreateMap<ClientsDTOIn, Clients>(); 
            CreateMap<Clients, ClientsDTOOut>();
            CreateMap<ClientsDTOOut, Clients>();
        }










    }
}
