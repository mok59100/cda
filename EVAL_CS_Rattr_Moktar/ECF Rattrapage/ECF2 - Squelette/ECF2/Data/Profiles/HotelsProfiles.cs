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
	public class HotelsProfiles : Profile
	{
		public HotelsProfiles()
		{
			CreateMap<Hotel, HotelsDTOIn>();
			CreateMap<HotelsDTOIn, Hotel>();

			CreateMap<Hotel, HotelsDTOOut>();
			CreateMap<HotelsDTOOut, Hotel>();

			
		}
	}
}
