using Microsoft.EntityFrameworkCore;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace ApiPersonnes.Data
{
    public class MyDBContext : DbContext
    {
        public MyDBContext(DbContextOptions<MyDbContext> options):base(options)
        {

        }
    }
}
