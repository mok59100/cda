﻿using AutoMapper;
using ExerciceTableLiees.Data.Dtos;
using ExerciceTableLiees.Data.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace ExerciceTableLiees.Data.Profiles
{
    public class AutomobilesProfiles :Profile
    {
        public AutomobilesProfiles()
        {
            CreateMap<AutomobilesDTO, Automobile>();
            CreateMap< Automobile, AutomobilesDTO>();

        }
    }
}
