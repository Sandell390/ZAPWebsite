using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ZAPWebsite
{
    public partial class OrderHytte : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
            


        }

        protected void buttonOrder_OnClick(object sender, EventArgs e)
        {
            Order order = new Order();

            int index = name.Value.IndexOf(' ');

            order.FirstName = name.Value.Substring(0, index);

            order.LastName = name.Value.Substring(index + 1, (name.Value.Length - index) - 1);
            order.Address = Address.Value;
            order.TelefonNr = telefonNr.Value;
            order.Eamil = email.Value;


            order.Adult = int.Parse(adult.Value);
            order.Kids = int.Parse(kid.Value);
            order.Dog = int.Parse(dog.Value);

            order.BreakfastA = int.Parse(morgenA.Value);
            order.BreakfastK = int.Parse(morgenK.Value);
            order.Bike = int.Parse(bike.Value);
            order.WaterlandA = int.Parse(waterlandA.Value);
            order.WaterlandK = int.Parse(waterlandK.Value);

            order.BedThings = int.Parse(bedThing.Value);
            order.EndClean = endClean.Checked;
            order.LuxuryCottage = luksus.Checked;

            order.BigPlace = false;
            
  
            order.StartDate = DateTime.Parse(startDate.Value);
            order.EndDate = DateTime.Parse(endDate.Value);

            order.CalculatePersons();

            order.SetType("cottage");

            OrderHandler orderHandler = new OrderHandler(order);

            Response.Redirect("Confirm.aspx");

        }
    }
}