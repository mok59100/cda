using AutoMapper;
using ECF.Data.Dtos;
using ECF.Data.Models;
using System;
namespace ECF.Data.Profiles
{
	public class MusiciensProfiles :Profile
	{
		public MusiciensProfiles()
		{
			CreateMap<Musicien, MusiciensDTOIn>();
			CreateMap<MusiciensDTOIn, Musicien>();

			CreateMap<Musicien, MusiciensDTOOut>();
			CreateMap<MusiciensDTOOut, Musicien>();

			CreateMap<Musicien, MusiciensDTOOutAvecGroupe>();
			CreateMap<MusiciensDTOOutAvecGroupe, Musicien>();
		}
	}
}