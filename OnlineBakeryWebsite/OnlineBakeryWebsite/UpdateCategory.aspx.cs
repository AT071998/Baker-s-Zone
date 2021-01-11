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
    public partial class UpdateCategory : System.Web.UI.Page
    {
        
        
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["UNAME"] == null)
            {
                Response.Redirect("HomeLogin.aspx");
            }
            int catid = int.Parse(Request.QueryString.Get(0));
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["MyDB"].ConnectionString);
            con.Open();
            SqlCommand com = new SqlCommand("SELECT * FROM TableCategory WHERE CatId=" + catid,con);
            SqlDataReader dr = com.ExecuteReader();
            while (dr.Read()) // as long as the data reader has the data to read. .
            {
                txtCategory.Text = dr.GetString(1);
                
            }




        }
        static int catid;
        protected void btnAddtxtCategory_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["MyDB"].ConnectionString);
            con.Open();
            catid = int.Parse(Request.QueryString.Get(0));
            SqlCommand com = new SqlCommand("UPDATE TableCategory SET CatName ='" + txtCategory.Text + "' WHERE CatId=" + catid, con);
            if (com.ExecuteNonQuery() > 0)
            {
                Response.Write(" <script>alert('Category Updated Succesfully');</script>");
            }
            
           // txtCategory.Text = string.Empty;
            con.Close();
            Response.Redirect("AddCategory.aspx");
        }
    }
}