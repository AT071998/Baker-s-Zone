using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Threading;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace OnlineBakeryWebsite
{
    public partial class BuyNow : System.Web.UI.Page
    {
        SqlDataReader dr1;
        SqlCommand cmd, cmd1;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                DataTable dt = new DataTable();
                DataRow dr;
                dt.Columns.Add("sno");
                dt.Columns.Add("productid");
                dt.Columns.Add("productname");
                dt.Columns.Add("quantity");
                dt.Columns.Add("price");
                dt.Columns.Add("totalprice");
                dt.Columns.Add("productimage");


                if (Request.QueryString["id"] != null)
                {
                    if (Session["Buyitems"] == null)
                    {

                        dr = dt.NewRow();
                        SqlConnection scon = new SqlConnection(ConfigurationManager.ConnectionStrings["MyDB"].ConnectionString);
                        String myquery = "select * from tbl_Product where pr_id=" + Request.QueryString["id"];
                        SqlCommand cmd = new SqlCommand();
                        cmd.CommandText = myquery;
                        cmd.Connection = scon;
                        SqlDataAdapter da = new SqlDataAdapter();
                        da.SelectCommand = cmd;
                        DataSet ds = new DataSet();
                        da.Fill(ds);
                        dr["sno"] = 1;
                        dr["PId"] = ds.Tables[0].Rows[0]["PId"].ToString();
                        dr["PName"] = ds.Tables[0].Rows[0]["PName"].ToString();
                        dr["PIMAGE"] = ds.Tables[0].Rows[0]["PIMAGE"].ToString();
                        dr["quantity"] = Request.QueryString["quantity"];
                        //dr["pr_Type"] = ds.Tables[0].Rows[0]["pr_Type"].ToString();
                        dr["PPrice"] = ds.Tables[0].Rows[0]["PPrice"].ToString();
                        int price = Convert.ToInt16(ds.Tables[0].Rows[0]["PPrice"].ToString());
                        int quantity = Convert.ToInt16(Request.QueryString["quantity"].ToString());
                        int totalprice = price * quantity;
                        dr["totalprice"] = totalprice;

                        dt.Rows.Add(dr);
                        GridView1.DataSource = dt;
                        GridView1.DataBind();

                        Session["buyitems"] = dt;
                        GridView1.FooterRow.Cells[5].Text = "Total Amount";
                        GridView1.FooterRow.Cells[6].Text = grandtotal().ToString();
                        Response.Redirect("AddToCart.aspx");

                    }
                    else
                    {

                        dt = (DataTable)Session["buyitems"];
                        int sr;
                        sr = dt.Rows.Count;

                        dr = dt.NewRow();
                        SqlConnection scon = new SqlConnection(ConfigurationManager.ConnectionStrings["MyDB"].ConnectionString);
                        String myquery = "select * from TableProduct where PId=" + Request.QueryString["id"];
                        SqlCommand cmd = new SqlCommand();
                        cmd.CommandText = myquery;
                        cmd.Connection = scon;
                        SqlDataAdapter da = new SqlDataAdapter();
                        da.SelectCommand = cmd;
                        DataSet ds = new DataSet();
                        da.Fill(ds);
                        dr["sno"] = sr + 1;
                        dr["PId"] = ds.Tables[0].Rows[0]["PId"].ToString();
                        dr["PName"] = ds.Tables[0].Rows[0]["PName"].ToString();
                        dr["PIMAGE"] = ds.Tables[0].Rows[0]["PIMAGE"].ToString();
                        dr["quantity"] = Request.QueryString["quantity"];
                        // dr["pr_Type"] = ds.Tables[0].Rows[0]["pr_Type"].ToString();
                        dr["PPrice"] = ds.Tables[0].Rows[0]["PPrice"].ToString();
                        int price = Convert.ToInt16(ds.Tables[0].Rows[0]["PPrice"].ToString());
                        int quantity = Convert.ToInt16(Request.QueryString["quantity"].ToString());
                        int totalprice = price * quantity;
                        dr["totalprice"] = totalprice;
                        dt.Rows.Add(dr);
                        GridView1.DataSource = dt;
                        GridView1.DataBind();

                        Session["buyitems"] = dt;
                        GridView1.FooterRow.Cells[5].Text = "Total Amount";
                        GridView1.FooterRow.Cells[6].Text = grandtotal().ToString();
                        Response.Redirect("AddToCart.aspx");

                    }
                }
                else
                {
                    dt = (DataTable)Session["buyitems"];
                    GridView1.DataSource = dt;
                    GridView1.DataBind();
                    if (GridView1.Rows.Count > 0)
                    {
                        GridView1.FooterRow.Cells[5].Text = "Total Amount";
                        GridView1.FooterRow.Cells[6].Text = grandtotal().ToString();

                    }


                }
                // Label2.Text = GridView1.Rows.Count.ToString();
                MultiView1.ActiveViewIndex = 0;
                lblOrderingDate.Text = DateTime.Now.ToString();
                lblDeliveryDate.Text = DateTime.Now.AddHours(1).ToString();
                lblPayType.Text = "Cash on Delivery!";

            }

        }
        public int grandtotal()
        {
            DataTable dt = new DataTable();
            dt = (DataTable)Session["buyitems"];
            int nrow = dt.Rows.Count;
            int i = 0;
            int gtotal = 0;
            while (i < nrow)
            {
                gtotal = gtotal + Convert.ToInt32(dt.Rows[i]["totalprice"].ToString());

                i = i + 1;
            }
            return gtotal;
        }

       

      

        protected void Button2_Click(object sender, EventArgs e)
        {
            DataTable dt;

            dt = (DataTable)Session["buyitems"];
            for (int i = 0; i <= dt.Rows.Count - 1; i++)
            {
                SqlConnection s = new SqlConnection(ConfigurationManager.ConnectionStrings["MyDB"].ConnectionString);
                s.Open();
                cmd1 = new SqlCommand("select UserId,Name from UserTable where Username='" + Session["UNAME"] + "'", s);
                dr1 = cmd1.ExecuteReader();
                while (dr1.Read())
                {
                    int cusid = Convert.ToInt32(dr1[0]);

                    cmd = new SqlCommand("INSERT INTO OrderTable VALUES('" + lblOrderingDate.Text + "','" + lblDeliveryDate.Text + "','" + dt.Rows[i]["quantity"] + "','" + dt.Rows[i]["totalprice"] + "','" + lblPayType.Text + "'," + dt.Rows[i]["PId"] + "," + cusid + ")", s);
                }
                dr1.Close();
                cmd.ExecuteNonQuery();
                Thread.Sleep(3000);
                lblStatus.Text = "You order is Placed. We will get back to you soon with your order! Our Executive will Call you before reaching your home.";
                HyperLink1.Visible = true;
            }
        }
    }
}