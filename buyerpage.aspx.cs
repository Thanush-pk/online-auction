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
        SqlDataSource1.SelectCommand = "Select * from SellerData";
    }


    protected void adgrid3_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        
        if (e.CommandName == "Delete")
        {
            int x = Convert.ToInt32(e.CommandArgument);
            GridViewRow row = adgrid3.Rows[x];
            SqlConnection con = new SqlConnection(ConfigurationManager.AppSettings["ConStr"]);
            try
            {
                con.Open();
                string query = "Delete From ProdInfo where ProdId='" + row.Cells[0].Text + "';";
                SqlCommand cmd = new SqlCommand(query, con);
                cmd.ExecuteNonQuery();
            }
            catch
            {
            }
            finally
            {
                con.Close();
                Response.Redirect("manageproduct.aspx");
            }
        }
    }

    protected void RowDelete(Object sender, GridViewDeletedEventArgs e)
    {
        if (e.Exception == null)
        {
            adgrid3.EmptyDataText = "Row deleted successfully.";
        }

    }

}