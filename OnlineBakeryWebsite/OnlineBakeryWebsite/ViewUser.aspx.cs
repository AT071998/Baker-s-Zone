using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace OnlineBakeryWebsite
{
    public partial class ViewUser : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["UNAME"] == null)
            {
                Response.Redirect("HomeLogin.aspx");
            }
            else
            {
                using(OnlineBakeryEntities on = new OnlineBakeryEntities())
                {
                    //string uname = (string)Session["UNAME"];

                }
            }
        }
    }
}