using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Threading;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace OnlineBakeryWebsite
{
    public partial class Registration : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Btn_Register(object sender, EventArgs e)
        {
            
       
            string name = txtfname.Text;
            string username = txtUserName.Text;
            string phno = txtmobile.Text;
            string add = txtcity.Text;
            //Drop down list. . .
            string ddl = ddlList.SelectedValue;  
            string email = txtemail.Text;
            string pass = txtpass.Text;
            //string usertype = "user";
            string filename = "";
            if (FileUpload1.HasFile)
            {
                filename = DateTime.Now.ToString("yyyymmddhhmmssffff") + System.IO.Path.GetExtension(FileUpload1.PostedFile.FileName);
                string savepath = Server.MapPath("UserImages") + "\\" + filename;
                FileUpload1.SaveAs(savepath);
            }

            using (OnlineBakeryEntities db = new OnlineBakeryEntities())
            {
                UserTable tbl = new UserTable();
                tbl.Name = name;
                tbl.Username = username;
                tbl.MobileNo = phno;
                tbl.Address = add;
                tbl.City = ddl;
                tbl.Email = email;
                tbl.Password = pass;
                tbl.UserImage = filename;
                tbl.UserType = "user";
                db.UserTables.Add(tbl);
                db.SaveChanges();
                //Thread.Sleep(2000);
                lblMsg.Text = "Registration Successfully done";
                clr();
                lblMsg.ForeColor = System.Drawing.Color.Green;
                //Thread.Sleep(2000);
                Response.Write("HomeLogin.aspx");

            }

           
           
            //Response.Redirect("HomeLogin.aspx");
        }

        private void clr()
        {
            txtfname.Text = string.Empty;
            txtmobile.Text = string.Empty;
            txtemail.Text = string.Empty;
            txtUserName.Text = string.Empty;
            txtcity.Text = string.Empty;
        }
    }
}