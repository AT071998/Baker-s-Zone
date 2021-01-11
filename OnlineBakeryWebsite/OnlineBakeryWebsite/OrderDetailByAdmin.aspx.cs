using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace OnlineBakeryWebsite
{
    public partial class OrderDetailByAdmin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName == "Reply")
            {
                Response.Redirect("ProcessOrder.aspx?id=" + e.CommandArgument.ToString());
            }
            if (e.CommandName == "viewdetail")
            {
                Response.Redirect("ViewOrderDetailByAdmin.aspx?id=" + e.CommandArgument.ToString());
            }
        }
    }
}