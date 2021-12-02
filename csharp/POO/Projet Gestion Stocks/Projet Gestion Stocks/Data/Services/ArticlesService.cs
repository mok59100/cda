using Projet_Gestion_Stocks.Data.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Projet_Gestion_Stocks.Data.Services
{
   public class ArticlesService
    {

        private readonly MyDbContext _context;

        public ArticlesService(MyDbContext context)
        {
            _context = context;
        }

        public void AddArticles(Articles obj)
        {
            if (obj == null)
            {
                throw new ArgumentNullException(nameof(obj));
            }
            _context.Articles.Add(obj);
            _context.SaveChanges();
        }

        public void DeleteArticles(Articles obj)
        {
            if (obj == null)
            {
                throw new ArgumentNullException(nameof(obj));
            }
            _context.Articles.Remove(obj);
            _context.SaveChanges();
        }

        public IEnumerable<Articles> GetAllArticles()
        {
            return _context.Articles.ToList();
        }

        public Articles GetArticlesById(int id)
        {
            return _context.Articles.FirstOrDefault(obj => obj.IdArticle == id);
        }

        public void UpdateArticles(Articles obj)
        {
            _context.SaveChanges();
        }



    }
}
