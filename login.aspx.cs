using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class index : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Login(object sender, EventArgs e)
    {
        if(uname.Value.Equals("admin",StringComparison.OrdinalIgnoreCase) && pswd.Value.Equals("admin",StringComparison.OrdinalIgnoreCase))
        {
            Response.Redirect("adminhome.aspx");
        }
        else
        {

            SqlConnection con = new SqlConnection(ConfigurationManager.AppSettings["ConStr"]);
            try
            {
                con.Open();
                string query = "select * from UserData where Username='" + uname.Value + "' and Password='" + pswd.Value + "'; ";
                SqlCommand cmd = new SqlCommand(query, con);
                SqlDataReader dr = cmd.ExecuteReader();
                if (dr.HasRows)
                {
                    while (dr.Read())
                    {
                        string un = dr.GetValue(0).ToString();
                        string pd = dr.GetValue(1).ToString();
                        string stat = dr.GetValue(7).ToString();
                        string tou = dr.GetValue(4).ToString();
                        if (uname.Value.Equals(un) & pswd.Value.Equals(pd) & stat.Equals("Approved") & tou.Equals("Seller"))
                        {
                            Session["Username"] = uname.Value;
                            Session["Username"] = dr.GetValue(0).ToString();
                            Session["Email"]= dr.GetValue(5).ToString();
                            Session["Phone"] = dr.GetValue(6).ToString();
                            Response.Redirect("sellerpage.aspx");
                        }
                        else if (uname.Value.Equals(un) & pswd.Value.Equals(pd) & stat.Equals("Approved") & tou.Equals("Buyer"))
                        {

                            Session["Username"] = dr.GetValue(0).ToString();
                            Session["Username"] = uname.Value;
                            Session["Email"] = dr.GetValue(5).ToString();
                            Session["Phone"] = dr.GetValue(6).ToString();
                            Response.Redirect("buyerpage.aspx");
                        }
                        
                        else
                        {
                            Response.Write("<script>alert('Please contact administrator at Online Bidding@gmail.com!!!');</script>");
                        }
                    }
                }
                else
                {
                    Response.Write("<script>alert('Invalid User!!!');</script>");
                }
            }
            catch
            {
            }
            finally
            {
                con.Close();
            }
        }
    }
}