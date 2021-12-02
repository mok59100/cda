using AutoMapper;
using Projet_Gestion_Stocks.Data.Dtos;
using Projet_Gestion_Stocks.Data.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Projet_Gestion_Stocks.Data.Profiles
{
    public class  ArticlesProfile :Profile
    {
              public ArticlesProfile()
        
            {
                CreateMap<Articles, ArticlesDTO>();
                CreateMap<ArticlesDTO, Articles>();
                CreateMap<Articles, ArticlesDTOIn>();
                CreateMap<ArticlesDTOIn, Articles>();
                CreateMap<Articles, ArticlesDTOOut>();
                CreateMap<ArticlesDTOOut, Articles>();
            }
        

    }





 }
    
