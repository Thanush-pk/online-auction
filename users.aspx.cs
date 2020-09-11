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
        SqlDataSource1.SelectCommand = "Select * from UserData where Status='Approved'";
        SqlDataSource2.SelectCommand = "Select * from UserData where Status='Pending'";
    }


    protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
    {

        if (e.CommandName == "Delete")
        {
            int x = Convert.ToInt32(e.CommandArgument);
            GridViewRow row = GridView1.Rows[x];
            SqlConnection con = new SqlConnection(ConfigurationManager.AppSettings["ConStr"]);
            try
            {
                con.Open();
                string query = "Delete From UserData where Email='" + row.Cells[2].Text + "';";
                SqlCommand cmd = new SqlCommand(query, con);
                cmd.ExecuteNonQuery();
            }
            catch
            {
            }
            finally
            {
                con.Close();
                Response.Redirect("users.aspx");
            }
        }

        if (e.CommandName == "Approve")
        {
            int x = Convert.ToInt32(e.CommandArgument);
            GridViewRow row = GridView2.Rows[x];
            SqlConnection con = new SqlConnection(ConfigurationManager.AppSettings["ConStr"]);
            try
            {
                con.Open();
                string query = "Update UserData Set Status='Approved' where Email='" + row.Cells[1].Text + "';";
                SqlCommand cmd = new SqlCommand(query, con);
                cmd.ExecuteNonQuery();
                String mail = row.Cells[1].Text;



                MailMessage m = new MailMessage("praga.chinu@gmail.com", mail, "Approval Mail from Online Bidding!!!", "​Welcome to Online Bidding portal !!!\n Your Username : " + row.Cells[0].Text + " Access Password is :" + row.Cells[5].Text);
                SmtpClient s = new SmtpClient("smtp.gmail.com", 587);
                s.Credentials = new System.Net.NetworkCredential("praga.chinu@gmail.com", "pragachinu");
                s.EnableSsl = true;
                s.Send(m);
            }
            catch
            {
            }
            finally
            {
                con.Close();
                Response.Redirect("users.aspx");
            }
        }
        if (e.CommandName == "Reject")
        {
            int x = Convert.ToInt32(e.CommandArgument);
            GridViewRow row = GridView2.Rows[x];
            SqlConnection con = new SqlConnection(ConfigurationManager.AppSettings["ConStr"]);
            try
            {
                con.Open();
                string query = "Delete From UserData where Email='" + row.Cells[1].Text + "';";
                SqlCommand cmd = new SqlCommand(query, con);
                cmd.ExecuteNonQuery();
            }
            catch
            {
            }
            finally
            {
                con.Close();
                Response.Redirect("users.aspx");
            }
        }


    }

    protected void RowDelete(Object sender, GridViewDeletedEventArgs e)
    {
        if (e.Exception == null)
        {
            GridView1.EmptyDataText = "Row deleted successfully.";
        }

    }

}