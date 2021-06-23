using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Web;
using System.Web.Services;
using System.Web.UI;
using System.Web.UI.HtmlControls;
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

            int index = name.Value.IndexOf(' ');
            
            int year = DateTime.Today.Year;

            order.FirstName = name.Value.Substring(0, index);

            order.LastName = name.Value.Substring(index + 1, (name.Value.Length - index) - 1);
            order.Address = Address.Value;
            order.TelefonNr = telefonNr.Value;
            order.Eamil = email.Value;

            order.BigPlace = bigPlace.Checked;
            order.WaterView = waterView.Checked;

            if (winter.Checked)
            {
                order.Season = int.Parse(winter.Value);

                if (DateTime.Today < DateTime.Parse($"1-10-{year}"))
                {
                    order.StartDate = DateTime.Parse($"1-10-{year}");
                    order.EndDate = DateTime.Parse($"31-3-{year + 1}");
                }
                else
                {
                    order.StartDate = DateTime.Parse($"1-10-{year + 1}");
                    order.EndDate = DateTime.Parse($"31-3-{year + 2}");
                }

            } else if (spring.Checked)
            {
                order.Season = int.Parse(spring.Value);

                if (DateTime.Today < DateTime.Parse($"1-4-{year}"))
                {
                    order.StartDate = DateTime.Parse($"1-4-{year}");
                    order.EndDate = DateTime.Parse($"30-6-{year}");
                }
                else
                {
                    order.StartDate = DateTime.Parse($"1-4-{year + 1}");
                    order.EndDate = DateTime.Parse($"30-6-{year + 1}");
                }
            }
            else if (summer.Checked)
            {
                order.Season = int.Parse(summer.Value);

                if (DateTime.Today < DateTime.Parse($"1-4-{year}"))
                {
                    order.StartDate = DateTime.Parse($"1-4-{year}");
                    order.EndDate = DateTime.Parse($"30-9-{year}");
                }
                else
                {
                    order.StartDate = DateTime.Parse($"1-4-{year + 1}");
                    order.EndDate = DateTime.Parse($"30-9-{year + 1}");
                }
            }
            else if (autumn.Checked)
            {
                order.Season = int.Parse(autumn.Value);

                if (DateTime.Today < DateTime.Parse($"15-8-{year}"))
                {
                    order.StartDate = DateTime.Parse($"15-8-{year}");
                    order.EndDate = DateTime.Parse($"31-10-{year}");
                }
                else
                {
                    order.StartDate = DateTime.Parse($"15-8-{year + 1}");
                    order.EndDate = DateTime.Parse($"31-10-{year + 1}");
                }
            }

            if (telt.Checked)
            {
                order.SetType("tent");
            }
            else if (campingvogn.Checked)
            {
                order.SetType("caravan");
            }

            OrderHandler orderHandler = new OrderHandler(order);

            Response.Redirect("Confirm.aspx");
        }
        
    }
}