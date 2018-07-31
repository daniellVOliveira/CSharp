using System;
using System.Collections.Generic;
using System.Data.Entity.Validation;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
using System.Data.Entity;
using WebApplication1.Models;

namespace WebApplication1.DAL
{
    public class TuristaDAO
    {
        public int incluirTurista(Turista turista)
        {
           using(var ctx = new ReservasModel1())
            {
                ctx.Turistas.Add(turista);
                ctx.SaveChanges();
                return turista.Id;
            }
        }
    }
}