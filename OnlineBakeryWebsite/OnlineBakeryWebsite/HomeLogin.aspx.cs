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
    public partial class HomeLogin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (Request.Cookies["UNAME"] != null && Request.Cookies["UPWD"] != null)
                {
                    txtUserName.Text = Request.Cookies["UNAME"].Value;
                    txtPass.Text = Request.Cookies["UPWD"].Value;
                    CheckBox1.Checked = true;
                }
            }
        }


        protected void btnLogin_Click(object sender, EventArgs e)
        {
            using (SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["MyDB"].ConnectionString))
            {
                con.Open();
                SqlCommand cmd = new SqlCommand("Select * from UserTable where Username = @Username and Password=@pwd", con);
                cmd.Parameters.AddWithValue("@Username", txtUserName.Text);
                cmd.Parameters.AddWithValue("@pwd", txtPass.Text);
                // cmd.ExecuteNonQuery();
                SqlDataAdapter sda = new SqlDataAdapter(cmd);
                DataTable db = new DataTable();
                sda.Fill(db);
                if (db.Rows.Count != 0)
                {
                    if (CheckBox1.Checked)
                    {
                        Response.Cookies["UNAME"].Value = txtUserName.Text;
                        Response.Cookies["UPWD"].Value = txtPass.Text;
                        Response.Cookies["UNAME"].Expires = DateTime.Now.AddDays(10);
                        Response.Cookies["UPWD"].Expires = DateTime.Now.AddDays(10);
                    }
                    else
                    {
                        Response.Cookies["UNAME"].Expires = DateTime.Now.AddDays(-1);
                        Response.Cookies["UPWD"].Expires = DateTime.Now.AddDays(-1);

                    }
                    string Utype;
                    Utype = db.Rows[0][9].ToString().Trim();
                    if (Utype == "Admin")
                    {
                        Session["UNAME"] = txtUserName.Text;
                        Response.Redirect("~/AdminHomePage.aspx");
                    }
                    else
                    {
                        Session["UNAME"] = txtUserName.Text;
                        Response.Redirect("~/HomeUser.aspx");
                        //Response.Write("<script> alert('Login Successfully done');  </script>");
                    }

                }
                else
                {
                    lblError.Text = "Invalid Username or Password";
                }
                //sponse.Write("<script> alert('Login Successfully done');  </script>");
                clr();
                con.Close();
                //blMsg.Text = "Registration Successfully done";
                //blMsg.ForeColor = System.Drawing.Color.Green;

            }
        }
        private void clr()
        {
            txtPass.Text = string.Empty;
            txtUserName.Text = string.Empty;
            txtUserName.Focus();

        }

        protected void txtUserName_TextChanged(object sender, EventArgs e)
        {

        }
    }
    }
