using AutoMapper;
using ECF2.Data.Dtos;
using ECF2.Data.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ECF2.Data.Profiles
{
    public class ChambresProfiles : Profile
    {
        public ChambresProfiles()
		{
			CreateMap<Chambre, ChambresDTOIn>();
			CreateMap<ChambresDTOIn, Chambre>();

			CreateMap<Chambre, ChambresDTOOut>();
			CreateMap<ChambresDTOOut, Chambre>();

			CreateMap<Chambre, ChambresDTOOutAvecHotel>();
			CreateMap<ChambresDTOOutAvecHotel, Chambre>();
		}
	}
}
