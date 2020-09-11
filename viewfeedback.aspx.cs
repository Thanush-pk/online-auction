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
using System.Data;

public partial class viewfeedback : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            gvbind();
        }
    }
    protected void gvbind()
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.AppSettings["ConStr"]);
        con.Open();
        SqlCommand cmd = new SqlCommand("Select * from Feedback", con);
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        DataSet ds = new DataSet();
        da.Fill(ds);

        if (ds.Tables[0].Rows.Count > 0)
        {
            adgrid3.DataSource = ds;
            adgrid3.DataBind();
        }
        else
        {
            ds.Tables[0].Rows.Add(ds.Tables[0].NewRow());
            adgrid3.DataSource = ds;
            adgrid3.DataBind();
            int columncount = adgrid3.Rows[0].Cells.Count;
            adgrid3.Rows[0].Cells.Clear();
            adgrid3.Rows[0].Cells.Add(new TableCell());
            adgrid3.Rows[0].Cells[0].ColumnSpan = columncount;
            adgrid3.Rows[0].Cells[0].Text = "No Records Found";
        }
        con.Close();
    }



    protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
    {

        if (e.CommandName == "Delete")
        {
            int x = Convert.ToInt32(e.CommandArgument);
           // GridViewRow row = GridView1.Rows[x];
            SqlConnection con = new SqlConnection(ConfigurationManager.AppSettings["ConStr"]);
            try
            {
                con.Open();
               // string query = "Delete From ProdInfo where ProdId='" + row.Cells[0].Text + "';";
              //  SqlCommand cmd = new SqlCommand(query, con);
//cmd.ExecuteNonQuery();
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
         //   GridView1.EmptyDataText = "Row deleted successfully.";
        }

    }









    protected void adgrid3_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.AppSettings["ConStr"]);
        con.Open();
        GridViewRow row = (GridViewRow)adgrid3.Rows[e.RowIndex];
        Label lbldeleteid = (Label)row.FindControl("lblID");

        SqlCommand cmd = new SqlCommand("delete FROM Feedback where id='" + row.Cells[0].Text + "'", con);
        cmd.ExecuteNonQuery();
        con.Close();
        gvbind();
    }

}