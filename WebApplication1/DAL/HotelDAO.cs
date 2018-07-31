using System;
using System.Collections.Generic;
using System.Data.Entity.Validation;
using System.Linq;
using System.Data.Entity;
using System.Web;
using WebApplication1.Models;
using System.Data.SqlClient;

namespace WebApplication1.DAL
{
    public class MeioHotel
    {
        public int Id { get; set; }
        public string Nome { get; set; }
        public string Endereco { get; set; }
    }
    public class HotelDAO
    {
        public int incluirHotel(Hotel hotel)
        {
            using (var ctx = new ReservasModel1())
            {
                ctx.Hotels.Add(hotel);
                ctx.SaveChanges();
                return hotel.Id;
            }
        }
    }
}