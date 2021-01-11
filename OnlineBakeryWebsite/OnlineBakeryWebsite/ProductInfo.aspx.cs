using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace OnlineBakeryWebsite
{
    public partial class ProductInfo : System.Web.UI.Page
    {
        public static String CS = ConfigurationManager.ConnectionStrings["MyDB"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                // Call FillGridView Method
                FillGridView();
            }
        }

        public void FillGridView()
        {
            try
            {
                string cnString = ConfigurationManager.ConnectionStrings["MyDB"].ConnectionString;
                SqlConnection con = new SqlConnection(cnString);
                GlobalClass.adap = new SqlDataAdapter("select * from TableProduct", con);
                SqlCommandBuilder bui = new SqlCommandBuilder(GlobalClass.adap);
                GlobalClass.dt = new DataTable();
                GlobalClass.adap.Fill(GlobalClass.dt);
                gdProductsView.DataSource = GlobalClass.dt;
                gdProductsView.DataBind();
            }
            catch
            {
                Response.Write("<script> alert('Connection String Error...') </script>");
            }
        }
      

    }
}