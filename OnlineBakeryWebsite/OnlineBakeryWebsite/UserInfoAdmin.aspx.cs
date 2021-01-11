using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace OnlineBakeryWebsite
{
    public partial class UserInfoAdmin : System.Web.UI.Page
    {
        public static String CS = ConfigurationManager.ConnectionStrings["MyDB"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["UNAME"] == null)
            {
                Response.Redirect("HomeLogin.aspx");
            }
            using (OnlineBakeryEntities db = new OnlineBakeryEntities())
            {
                var result = from data in db.UserTables
                             where data.UserType == "user"
                             select data;
                gdUsers.DataSource = result.ToList();
                gdUsers.DataBind();
            }
           
        }
    }
}