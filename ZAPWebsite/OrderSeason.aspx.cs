using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ZAPWebsite
{
    public partial class OrderSeason : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void buttonOrder_OnClick(object sender, EventArgs e)
        {
            Order order = new Order();

            order.Name = name.Value;
            order.Address = Address.Value;
            order.TelefonNr = telefonNr.Value;
            order.Eamil = email.Value;

            order.Persons = int.Parse(persons.Value);

            order.BreakfastA = int.Parse(morgenA.Value);
            order.BreakfastK = int.Parse(morgenK.Value);
            order.Bike = int.Parse(bike.Value);
            order.WaterlandA = int.Parse(waterlandA.Value);
            order.WaterlandK = int.Parse(waterlandK.Value);

            order.BigPlace = bigPlace.Checked;
            order.WaterView = waterView.Checked;

            if (winter.Checked)
            {
                order.Season = int.Parse(winter.Value);
            } else if (spring.Checked)
            {
                order.Season = int.Parse(spring.Value);
            }
            else if (summer.Checked)
            {
                order.Season = int.Parse(summer.Value);
            }
            else if (autumn.Checked)
            {
                order.Season = int.Parse(autumn.Value);
            }

            if (telt.Checked)
            {
                order.SetType("tent");
            }
            else if (campingvogn.Checked)
            {
                order.SetType("caravan");
            }

            OrderHandler.AddOrder(order);
        }
    }
}