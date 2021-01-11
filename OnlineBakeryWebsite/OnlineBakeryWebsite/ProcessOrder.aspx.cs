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
    public partial class ProcessOrder : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["MyDB"].ConnectionString);
        SqlCommand cmd3;
        int orderid;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["UNAME"] == null)
            {
                Response.Redirect("HomeLogin.aspx");
            }
            con.Open();
            SqlCommand cmd1 = new SqlCommand("SELECT * FROM OrderTable JOIN" +
                "  TableProduct on OrderTable.Product_Id = TableProduct.PId JOIN UserTable" +
                " ON OrderTable.Customer_Id= UserTable.UserId WHERE OrderTable.OrderId='" + Request.QueryString["id".ToString()] + "'", con);
            SqlDataReader dr = cmd1.ExecuteReader();
            while (dr.Read())
            {
                lblOrderid.Text = "ORD-"  + dr[0].ToString();
                lblComplitionDate.Text = dr[2].ToString();
                lblCusName.Text = dr[16].ToString();
                lblClothName.Text = dr[9].ToString();
                orderid = Convert.ToInt32(dr[0]);
            }
            dr.Close();
            con.Close();
        }


        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            con.Open();
            SqlCommand cmd2 = new SqlCommand("Select UserId from UserTable where Username='" + Session["UNAME"] + "'", con);
           SqlDataReader dr = cmd2.ExecuteReader();
            while (dr.Read())
            {
                cmd3 = new SqlCommand("INSERT INTO OrderConfirmTable (OrderId,Status,Message)VALUES(" + orderid + ",'" + ddStatus.Text + "','" + txtReply.Text + "')", con);
            }
            dr.Close();
            cmd3.ExecuteNonQuery();
            con.Close();
            lblStatus.Text = "You have Sucessfully Updated";
            txtReply.Text = "";
        }
    }
}