using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Net.Mail;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;

public partial class BidPrd : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.AppSettings["ConStr"]);
    protected void Page_Load(object sender, EventArgs e)
    {


        //name.Value = Session["PrdName"].ToString();
        //uname.Value = Session["Pid"].ToString();
        //cost.Value = Session["cost"].ToString();
        //date.Value = Session["date"].ToString();
        //Bname.Value = Session["Bname"].ToString();



    }
}

    //protected void login_ServerClick(object sender, EventArgs e)
    //{

        //        string Name = name.Value;
        //        string Uname = uname.Value;
        //        string Cost = cost.Value;
        //        string Date = date.Value;


        //        TextBox txtName = (TextBox)lfile.FindControl("txtName");

        //        if (lfile.HasFile)
        //        {
        //            string fileName = lfile.FileName;
        //            string exten = Path.GetExtension(fileName);
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
        //                    lfile.SaveAs(Server.MapPath("~/images/") + lfile.FileName);

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




        //                    //    string str = lfile.FileName;
        //                    //    lfile.SaveAs(Server.MapPath("~/image/") + lfile.FileName);
        //                    ////    lfile.PostedFile.SaveAs(Server.MapPath("~/Upload/" + str));
        //                    //    string Image = "~/image/" + str.ToString();
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












 















//        SqlConnection con = new SqlConnection(ConfigurationManager.AppSettings["ConStr"]);
//        try
//        {
//            con.Open();
//            string rquery = "insert into SellerData values('" + name.Value + "','" + uname.Value + "','" + cost.Value + "','" + date.Value + "','" + sname.Value + "','" + lfile + "');";
//            SqlCommand cmd = new SqlCommand(rquery, con);
//            cmd.ExecuteNonQuery();

//            Response.Write("<script>alert('Thank you for Uploading  with us!!!');</script>");
//            Response.Write("<script>window.location='sellerpage.aspx';</script>");
//            //Response.Redirect("index.aspx");
//            // Resetter();
//        }

//        catch
//        {
//        }
//        finally
//        {
//            con.Close();
//        }
//    }

//}
