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

public partial class Feed : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        uname.Value = Session["Username"] as string;
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.AppSettings["ConStr"]);
        try
        {
            Random r = new Random();


            int num = r.Next();

            con.Open();

            string rquery = "insert into Feedback values('" + num + "','" + uname.Value + "','" + pswd.Value + "') ";
            SqlCommand cmd = new SqlCommand(rquery, con);
            cmd.ExecuteNonQuery();


            Response.Write("<script>alert('Thank you for Feedback  with us!!!');</script>");

            Response.Write("<script>window.location='buyerpage.aspx';</script>");
            //Resetter();
        }
        catch (Exception ex)
        {
            Response.Write("<script>alert('Email id already used!!!');</script>");
        }
        finally
        {
            con.Close();
        }
    }

}
