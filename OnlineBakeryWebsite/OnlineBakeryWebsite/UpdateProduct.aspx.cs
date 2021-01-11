using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.IO;
using System.Linq;
using System.Threading;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace OnlineBakeryWebsite
{
    public partial class UpdateProduct : System.Web.UI.Page
    {

        
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["UNAME"] == null)
            {
                Response.Redirect("HomeLogin.aspx");
            }
            int PId = int.Parse(Request.QueryString.Get(0));
            //BindCategoryReapter();
            //SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["MyDB"].ConnectionString);
            //con.Open();

            using (OnlineBakeryEntities db = new OnlineBakeryEntities())
            {
                TableProduct tb = (from data in db.TableProducts
                                   where data.PId == PId
                                   select data).First();
                BindCategory();
                txtProduct.Text = tb.PName;
                txtsellPrice.Text = tb.PPrice.ToString();
                // txtQuantity.Text = tb.quantity.ToString();
                txtDescription.Text = tb.PDescription;
                Image1.ImageUrl = tb.PIMAGE;

            }
            //SqlCommand cmd = new SqlCommand("Select * from TableProduct WHERE PId=" + PId, con);
            //BindCategory();
            //SqlDataReader dr = cmd.ExecuteReader();
            //while (dr.Read()) // as long as the data reader has the data to read. .
            //{
              //  txtProduct.Text = dr.GetString(1);
              //  txtsellPrice.Text = dr.GetDecimal(2).ToString();
                //ddlCategory.SelectedValue = dr.GetString(3);
               // txtDescription.Text = dr.GetString(4);
              //  Image1.ImageUrl = dr.GetString(7);
           // }
        }
        private void BindCategory()
        {
            using (SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["MyDB"].ConnectionString))
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
        static int PId;
        protected void BtnUpdate_Click(object sender, EventArgs e)
            {
            PId = int.Parse(Request.QueryString.Get(0));
            string filename = "";
            if (fuImg01 != null)
            {
                //string extension = Path.GetExtension(fuImg01.FileName);

                fuImg01.SaveAs(Server.MapPath("~/ImageFolder/") + System.IO.Path.GetFileName(fuImg01.FileName));
                filename = "ImageFolder/" + Path.GetFileName(fuImg01.FileName);


            }
            using (OnlineBakeryEntities db = new OnlineBakeryEntities())
            {
                TableProduct pd = (from data in db.TableProducts
                                   where data.PId == PId
                                   select data).SingleOrDefault();


                pd.PName = txtProduct.Text;
                if (!filename.Equals(""))
                {
                    pd.PIMAGE = filename;
                }
                db.SaveChanges();
                lblMsg.Text = txtProduct.Text;
                Thread.Sleep(2000);
                //Response.Redirect("ProductInfo.aspx");
                //Response.Write("<script>alert('Updated succesfully')</script>");
                //tbl.Student_Email = student.Student_Email;
               
            }

            /*if (fuImg01.HasFile)
            {
                filename = "IMG-" + DateTime.Now.ToString("yyyymmddhhmmssffff") + System.IO.Path.GetExtension(fuImg01.PostedFile.FileName);
                string savepath = Server.MapPath("ImageFolder") + "\\" + filename;
                fuImg01.SaveAs(savepath);
            }
            SqlCommand cmd = new SqlCommand("UPDATE TableProduct SET PName=" + txtProduceName.Text + ",PPrice=" + txtsellPrice.Text + ",PDescription="+txtDescription.Text+",PIMAGE="+ filename + "WHERE PId= " + Request.QueryString.Get(0), sqlconnection);
           */
        }
        protected void btnDelete_Click(object sender, EventArgs e)
        {
            PId = int.Parse(Request.QueryString.Get(0));
            using (OnlineBakeryEntities db = new OnlineBakeryEntities())
            {
                TableProduct row = (from data in db.TableProducts
                                    where data.PId == PId
                                    select data).First();
                db.TableProducts.Remove(row);
                db.SaveChanges();
                lblMsg.Text = "Deleted Successfully!";
                //Response.Redirect("Display.aspx");

            }
        }


    }
    }
