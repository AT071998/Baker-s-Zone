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
    public partial class TrackOrder : System.Web.UI.Page
    {
        string cs = ConfigurationManager.ConnectionStrings["MyDB"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                DataTable DT = new DataTable();
                using (SqlConnection con = new SqlConnection(cs))
                {
                    SqlDataAdapter da = new SqlDataAdapter("select * from OrderConfirmTable join OrderTable on OrderConfirmTable.OrderId=OrderTable.OrderId join TableProduct on OrderTable.Product_Id = TableProduct.PId join UserTable on OrderTable.Customer_Id = UserTable.UserId where Username='" + Session["UNAME"] + "' order by ReplyId desc", con);
                    da.Fill(DT);
                    if (DT.Rows.Count > 0)
                    {
                        GridView1.DataSource = DT;
                        GridView1.DataBind();
                    }

                }
            }

        }
    }
}