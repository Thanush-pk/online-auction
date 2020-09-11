﻿using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Net.Mail;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;

public partial class SelPage : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.AppSettings["ConStr"]);
    protected void Page_Load(object sender, EventArgs e)
    {
        sname.Value = Session["Username"].ToString();
        date1.Value = DateTime.Today.ToString("yyyy-MM-dd");
    }

    protected void login_ServerClick(object sender, EventArgs e)
    {

        //        string Name = name.Value;
        //        string Uname = uname.Value;
        //        string Cost = cost.Value;
        //        string Date = date.Value;


        //        TextBox txtName = (TextBox)lfile.FindControl("txtName");

        //        if (lfile.HasFile)
        //        {
        //string fileName = lfile.FileName;
        //string exten = Path.GetExtension(fileName);
        //            //here we have to restrict file type            
        //            exten = exten.ToLower();
        //            string[] acceptedFileTypes = new string[3];
        //            acceptedFileTypes[0] = ".png";
        //            acceptedFileTypes[1] = ".jpg";
        //            acceptedFileTypes[2] = ".jpeg";

        //            bool acceptFile = false;
        //            for (int i = 0; i <= 2; i++)
        //            {
        //                if (exten == acceptedFileTypes[i])
        //                {
        //                    acceptFile = true;
        //                }
        //            }
        //            if (!acceptFile)
        //            {
        //                //slabel.Text = "The file you are trying to upload is not a permitted file type!";
        //                Response.Write("<script>alert('The file you are trying to upload is not a permitted file type!')</script>");
        //            }
        //            else
        //            {

        //                SqlConnection con = new SqlConnection(ConfigurationManager.AppSettings["ConStr"]);
        //                try
        //                {
        //lfile.SaveAs(Server.MapPath("~/images/") + lfile.FileName);

        //                    //string cmdstr = "insert into UploadDoc(photo_path)values( @photo)";
        //                    // string cmdstr = "insert into UploadDoc(photo_path) values('" + empid + "','" + ename + "',@photo)";
        //                    string cmdstr = "insert into SellerData(Prdname,Pid,Bcost,date,Pname,File)values(@Name,@Uname,@Cost,@Date,@lfile)";
        //                    SqlCommand cmd = new SqlCommand(cmdstr, con);

        //                    //  cmd.Parameters.AddWithValue("@name", txtName.Text);
        //                    cmd.Parameters.AddWithValue("@Name", Name);

        //                    cmd.Parameters.AddWithValue("@Uname", Uname);
        //                    cmd.Parameters.AddWithValue("@Cost", Cost);


        //                    cmd.Parameters.AddWithValue("@Date", Date);

        //                    cmd.Parameters.AddWithValue("@lfile", "images/" + fileName);




        string str = lfile.FileName;
        lfile.SaveAs(Server.MapPath("~/images/") + lfile.FileName);
        lfile.PostedFile.SaveAs(Server.MapPath("~/upload/" + str));
        string Image = "~/images/" + str.ToString();
        //                    //  //  string name = TextBox1.Text;

        //                    //    SqlCommand cmd = new SqlCommand("insert into UploadDoc values(@email,@name,@Image)", con);
        //                    //    cmd.Parameters.AddWithValue("@empid", empid);
        //                    //    cmd.Parameters.AddWithValue("@ename", ename);
        //                    //    cmd.Parameters.AddWithValue("@photo", "image/" + fileName);
        //                    //   // cmd.Parameters.AddWithValue("Image", Image);
        //                    //    con.Open();
        //                    cmd.ExecuteNonQuery();
        //                    Response.Write("<script>alert('Upload is success!!!')</script>");
        //                    Response.Write("<script>window.location='StdUp.aspx'</script>");


        //                }



        //                catch (Exception ex) { }
        //                finally
        //                {
        //                    con.Close();
        //                }
        //            }
        //        }
        //    }
        //}



        SqlConnection con = new SqlConnection(ConfigurationManager.AppSettings["ConStr"]);
        try
        {
            string phone = Session["Phone"] as string;
            con.Open();
            string status = "Pending";
            string bid = "null";
            string rquery = "insert into SellerData values('" + name.Value + "','" + uname.Value + "','" + cost.Value + "','" + date1.Value + "','" + sname.Value + "','" + str + "','" + status + "','" + bid + "','" + lstdat.Value + "','"+desct.Value+"','"+phone+"');";
            SqlCommand cmd = new SqlCommand(rquery, con);
            cmd.ExecuteNonQuery();

            Response.Write("<script>alert('Thank you for Uploading  with us!!!');</script>");
            Response.Write("<script>window.location='SelPage.aspx';</script>");
            //Response.Redirect("index.aspx");
            // Resetter();
        }

        catch
        {
        }
        finally
        {
            con.Close();
        }
    }


    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Write("<script>window.location='SelPage.aspx';</script>");
    }
}