using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using ZAPFrameLibrary;

namespace ZAPWebsite
{
    public class OrderHandler
    {
        private Manager manager = new Manager();
        private Order order;

        public OrderHandler(Order _order)
        {
            order = _order;

            manager.MakeReveration(new Revervation(order.StartDate,order.EndDate, order.Adult, order.Kids,order.Dog,(Revervation.CampType)order.Type, (Revervation.Season)order.Season));
            
            AddAddons();

            manager.Revervation.Customer = new Customer(order.FirstName, order.LastName, order.Address, order.Eamil, order.TelefonNr);
            manager.InsertCustomer();

            manager.Revervation.OrderID = manager.Dal.InsertRevervation(manager.Revervation);

            manager.Dal.InsertAddition(manager.Revervation);
        }

        void AddAddons()
        {
            if (order.BreakfastA > 0)
            {
                manager.Revervation.AddAdditiions(new Additions(Additions.AdditionType.BreakfastA, order.BreakfastA));
            }

            if (order.BreakfastK > 0)
            {
                manager.Revervation.AddAdditiions(new Additions(Additions.AdditionType.BreakfastC, order.BreakfastK));
            }

            if (order.Bike > 0)
            {
                manager.Revervation.AddAdditiions(new Additions(Additions.AdditionType.Bike, order.Bike));
            }

            if (order.WaterlandA > 0)
            {
                manager.Revervation.AddAdditiions(new Additions(Additions.AdditionType.WaterlandA, order.WaterlandA));
            }
            if (order.WaterlandK > 0)
            {
                manager.Revervation.AddAdditiions(new Additions(Additions.AdditionType.WaterlandC, order.WaterlandK));
            }
            if (order.EndClean)
            {
                manager.Revervation.AddAdditiions(new Additions(Additions.AdditionType.endClean, 1));
            }
            if (order.BedThings > 0)
            {
                manager.Revervation.AddAdditiions(new Additions(Additions.AdditionType.BedThing, order.BedThings));
            }
        }

    }
}