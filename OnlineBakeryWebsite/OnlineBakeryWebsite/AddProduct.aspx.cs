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
    public partial class AddProduct : System.Web.UI.Page
    {
        public static String CS = ConfigurationManager.ConnectionStrings["MyDB"].ConnectionString;

        

        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["UNAME"] == null)
            {
              
                Response.Redirect("~/HomeLogin.aspx");
            }
            if (!IsPostBack)
            {
                BindCategory();
            }

        }

        protected void btnAdd_Click(object sender, EventArgs e)
        {
            using (SqlConnection con = new SqlConnection(CS))
            {
                int check_FD = 0;
                int check_D = 0;
                con.Open();

                SqlCommand cmd = con.CreateCommand();
                if(chFD.Checked == true)
                {
                    check_FD = 1;
                }
                else
                {
                    check_FD = 0;
                }

                if (cbCOD.Checked == true)
                {
                    check_D = 1;
                }
                else
                {
                    check_D = 0;
                }
                string link = "";
                if (fuImg01.HasFile)
                {
                   // filename = DateTime.Now.ToString("yyyymmddhhmmssffff") + System.IO.Path.GetExtension(fuImg01.PostedFile.FileName);
                  //  string savepath = Server.MapPath("~/ImageFolder/") + filename;
                    fuImg01.SaveAs(Server.MapPath("~/ImageFolder/") + System.IO.Path.GetFileName(fuImg01.FileName) );
                    link = "ImageFolder/" + Path.GetFileName(fuImg01.FileName);
                }
                cmd.CommandType = CommandType.Text;
                cmd.CommandText = "insert into TableProduct values('" + txtProduceName.Text + "','"+txtsellPrice.Text +"','" + ddlCategory.SelectedItem.Value + "','" + txtDescription.Text + "'," + check_FD + "," + check_D + ",'" + link + "')";
                cmd.ExecuteNonQuery();
              
               /* SqlCommand cmd = new SqlCommand("sp_InsertProduct", con);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@PName", txtProduceName.Text);
                cmd.Parameters.AddWithValue("@PPrice", txtsellPrice.Text);
               
                cmd.Parameters.AddWithValue("@PCategoryID", ddlCategory.SelectedItem.Value);

                cmd.Parameters.AddWithValue("@PDescription", txtDescription.Text);

                if (chFD.Checked == true)
                {
                    cmd.Parameters.AddWithValue("@FreeDelivery", 1.ToString());
                }
                else
                {
                    cmd.Parameters.AddWithValue("@FreeDelivery", 0.ToString());
                }


                if (cbCOD.Checked == true)
                {
                    cmd.Parameters.AddWithValue("@COD", 1.ToString());
                }
                else
                {
                    cmd.Parameters.AddWithValue("@COD", 0.ToString());
                }
               
           
                string filename = "";
                if (fuImg01.HasFile)
                {
                    filename = DateTime.Now.ToString("yyyymmddhhmmssffff") + System.IO.Path.GetExtension(fuImg01.PostedFile.FileName);
                    string savepath = Server.MapPath("ImageFolder") + "\\" + filename;
                    fuImg01.SaveAs(savepath);
                }
                cmd.Parameters.AddWithValue("@PImage", filename.ToString());*/
                lblMsg.Text = link + "Product Sucessfully Added";
                lblMsg.ForeColor = System.Drawing.Color.Green;
                clearInfo();
            }
        }

        private void clearInfo()
        {
            txtProduceName.Text = "";
            txtsellPrice.Text = "";
            txtDescription.Text = "";
            
        }

        private void BindCategory()
        {
            using (SqlConnection con = new SqlConnection(CS))
            {
                con.Open();
                SqlCommand cmd = new SqlCommand("Select * from TableCategory", con);
                SqlDataAdapter sdap = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                sdap.Fill(dt);
                if (dt.Rows.Count != 0)
                {
                    ddlCategory.DataSource = dt;
                    ddlCategory.DataTextField = "CatName";
                    ddlCategory.DataValueField = "CatID";
                    ddlCategory.DataBind();
                    ddlCategory.Items.Insert(0, new ListItem("-Select-", "0"));

                }
                con.Close();
            }

        }
    }
}