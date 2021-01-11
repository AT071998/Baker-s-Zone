using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace OnlineBakeryWebsite
{
    public partial class AddCategory : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
            if (Session["UNAME"] == null)
            {
                Response.Redirect("HomeLogin.aspx");
            }
            using (SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["MyDB"].ConnectionString))
            {
                using (SqlCommand cmd = new SqlCommand("select * from TableCategory", con))
                {
                    using (SqlDataAdapter sda = new SqlDataAdapter(cmd))
                    {
                        DataTable dt = new DataTable();
                        sda.Fill(dt);
                        rptrCategory.DataSource = dt;
                        rptrCategory.DataBind();
                    }
                }
            }

        }

        

        protected void btnAddtxtCategory_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["MyDB"].ConnectionString);
            con.Open();
            SqlCommand com = new SqlCommand("INSERT INTO TableCategory(CatName) VALUES('" + txtCategory.Text + "')", con);
            com.ExecuteNonQuery();
            Response.Write(" <script>alert('Category added Succesfully');</script>");
            txtCategory.Text = string.Empty;
            con.Close();
            txtCategory.Focus();
        }

        
        protected void rptrCategory_SelectedIndexChanged(object sender, EventArgs e)
        {
            
        }
    }
}