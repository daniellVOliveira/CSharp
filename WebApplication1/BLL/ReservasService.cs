using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using WebApplication1.DAL;
using WebApplication1.Models;

namespace WebApplication1.BLL
{
    public class ReservasService
    {
        private static HotelDAO hotelDAO = new HotelDAO();
        private static TuristaDAO turistaDAO = new TuristaDAO();
        public int incluirHotel(Hotel hotel)
        {
            return hotelDAO.incluirHotel(hotel);
        }
        public int incluirTurista(Turista turista)
        {
            return turistaDAO.incluirTurista(turista);
        }
    }
}