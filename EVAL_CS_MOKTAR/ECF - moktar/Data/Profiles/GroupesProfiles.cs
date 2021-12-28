using AutoMapper;
using ECF.Data.Dtos;
using ECF.Data.Models;
using System;
namespace ECF.Data.Profiles
{



	public class GroupesProfiles :Profile
	{
		public GroupesProfiles()
		{
			CreateMap<Groupe, GroupesDTOIn>();
			CreateMap<GroupesDTOIn, Groupe>();

			CreateMap<Groupe, GroupesDTOOut>();
			CreateMap<GroupesDTOOut, Groupe>();

			CreateMap<Groupe, GroupesDTOOutavecMusiciens>();
			CreateMap<GroupesDTOOutavecMusiciens, Groupe>();
		}
	}
}