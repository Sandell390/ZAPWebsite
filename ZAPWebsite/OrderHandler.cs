using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace ZAPWebsite
{
    public static class OrderHandler
    {
        private static List<Order> orders = new List<Order>();

        public static void AddOrder(Order order)
        {
            orders.Add(order);
        }
        
    }
}