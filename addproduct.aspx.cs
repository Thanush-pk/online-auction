using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.IO;
using System.Linq;
using System.Net;
using System.Net.Mail;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml;

public partial class index : System.Web.UI.Page
{
    string Latitude = string.Empty;
    string Longitude = string.Empty;
    protected void Page_Load(object sender, EventArgs e)
    {
        if(!IsPostBack)
        {
            Random r = new Random();
            pid.Value = "Prod" + r.Next(123, 9999);
        }
    }




    protected void SaveData(object sender, EventArgs e)
    {
        string ldate = lstdate.Value;
        string sts = "Pending";
        string bi = "null";
        SqlConnection con = new SqlConnection(ConfigurationManager.AppSettings["ConStr"]);
        try
        {
            con.Open();
            FileUpload1.SaveAs(Server.MapPath(@"./images/") + FileUpload1.FileName);
            string rquery = "insert into ProdInfo values('" + Request.Form[pid.UniqueID] + "','" + pname.Value + "','" + ldate + "','" + pver.Value + "','" + yom.Value + "','" + ptype.Value + "','" + descr.Value + "','" + FileUpload1.FileName + "','"+DateTime.Today.ToShortDateString()+"','"+ sts + "','"+bi+"');";
            SqlCommand cmd = new SqlCommand(rquery, con);
            cmd.ExecuteNonQuery();
           
            Response.Write("<script>alert('Product has been added!!!');</script>");

            Response.Write("<script>window.location='addproduct.aspx';</script>");
            //Resetter();
        }
        catch (Exception ex)
        {
            Response.Write("<script>alert('Product id already used!!!');</script>");
        }
        finally
        {
            con.Close();
        }
    }

    protected void RefreshData(object sender, EventArgs e)
    {
        Response.Redirect("register.aspx");
    }
}