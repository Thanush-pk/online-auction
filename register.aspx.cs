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

    }

    protected void SaveData(object sender, EventArgs e)
    {
       

        SqlConnection con = new SqlConnection(ConfigurationManager.AppSettings["ConStr"]);
            try
            {
                con.Open();
            
                string rquery = "insert into UserData values('"+uname.Value+"','" + pswd.Value + "','" + gender.Value + "','" + address.Value + "','" + tou.Value + "','" + email.Value + "','" + phnum.Value + "','Pending','"+ Latitude+"','"+ Longitude+"') ";
                SqlCommand cmd = new SqlCommand(rquery, con);
                cmd.ExecuteNonQuery();

            try
            {
                MailMessage m = new MailMessage("cloudscomputing<script>document.write(new Date().getFullYear());</script> @gmail.com", email.Value, "Welcome Mail !!!", "​Welcome to the Online Bidding application !!!\n Your Username is: " + uname.Value + "\n Your Password is: " + pswd.Value + "\n. please wait for the admin approval");
                SmtpClient s = new SmtpClient("smtp.gmail.com", 587);
                s.Credentials = new System.Net.NetworkCredential("cloudscomputing<script>document.write(new Date().getFullYear());</script> @gmail.com", "cloud@123");
                s.EnableSsl = true;
                s.Send(m);
            }
            catch
            {
            }
            Response.Write("<script>alert('Thank you for registering with us!!!');</script>");

            Response.Write("<script>window.location='login.aspx';</script>");
            //Resetter();
        }
        catch(Exception ex)
        {
            Response.Write("<script>alert('Email id already used!!!');</script>");
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

    protected void GeoCode(string Address)
    {
        //to Read the Stream
        StreamReader sr = null;

        //The Google Maps API Either return JSON or XML. We are using XML Here
        //Saving the url of the Google API 
        string url = String.Format("https://maps.googleapis.com/maps/api/geocode/xml?address=" + Address + "&key=AIzaSyD55Oyyz-3NOPPHbX1YNnSoAqCYdQSFLTE");

        //to Send the request to Web Client 
        WebClient wc = new WebClient();
        try
        {
            sr = new StreamReader(wc.OpenRead(url));
        }
        catch (Exception ex)
        {
            throw new Exception("The Error Occured" + ex.Message);
        }

        try
        {
            XmlTextReader xmlReader = new XmlTextReader(sr);
            bool latread = false;
            bool longread = false;

            while (xmlReader.Read())
            {
                xmlReader.MoveToElement();
                switch (xmlReader.Name)
                {
                    case "lat":

                        if (!latread)
                        {
                            xmlReader.Read();
                            Latitude = xmlReader.Value.ToString();
                            latread = true;

                        }
                        break;
                    case "lng":
                        if (!longread)
                        {
                            xmlReader.Read();
                            Longitude = xmlReader.Value.ToString();
                            longread = true;
                        }

                        break;
                }
            }
        }
        catch (Exception ex)
        {
            throw new Exception("An Error Occured" + ex.Message);
        }
    }
}