using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;

public partial class AdminViewbid : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.AppSettings["ConStr"]);
    protected void Page_Load(object sender, EventArgs e)
    {
        
      if (!IsPostBack)
       {
            gvbind();
       //     bindview();
        }
    }
    protected void gvbind()
    {
        string b = "Clear";
        con.Open();
        SqlCommand cmd = new SqlCommand("Select * from BidPrd where Status='"+b+"'", con);
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        DataSet ds = new DataSet();
        da.Fill(ds);
        con.Close();
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


    }
    /*
    protected void bindview()
    {
        string c = "null";
        SqlConnection con = new SqlConnection(ConfigurationManager.AppSettings["ConStr"]);
        con.Open();
        SqlCommand cmd = new SqlCommand("Select * from ProdInfo where Status!='"+c+"'", con);
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        DataSet ds = new DataSet();
        da.Fill(ds);

        if (ds.Tables[0].Rows.Count > 0)
        {
            GridView1.DataSource = ds;
            GridView1.DataBind();
        }
        else
        {
            ds.Tables[0].Rows.Add(ds.Tables[0].NewRow());
            GridView1.DataSource = ds;
            GridView1.DataBind();
            int columncount = GridView1.Rows[0].Cells.Count;
            GridView1.Rows[0].Cells.Clear();
            GridView1.Rows[0].Cells.Add(new TableCell());
            GridView1.Rows[0].Cells[0].ColumnSpan = columncount;
            GridView1.Rows[0].Cells[0].Text = "No Records Found";
        }
        con.Close();
    }
    */


    protected void adgrid3_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.AppSettings["ConStr"]);
        con.Open();
        GridViewRow row = (GridViewRow)adgrid3.Rows[e.RowIndex];
        Label lbldeleteid = (Label)row.FindControl("lblID");

        SqlCommand cmd = new SqlCommand("delete FROM BidPrd where Pid='" + row.Cells[0].Text + "'", con);
        cmd.ExecuteNonQuery();
        con.Close();
        gvbind();
    }
    /*
    protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.AppSettings["ConStr"]);
        con.Open();
        GridViewRow row = (GridViewRow)GridView1.Rows[e.RowIndex];
        Label lbldeleteid = (Label)row.FindControl("lblID");

        SqlCommand cmd = new SqlCommand("delete FROM ProdInfo where ProdID='" + row.Cells[0].Text + "'", con);
        cmd.ExecuteNonQuery();
        Response.Write("<script>window.location='adminhome.aspx';</script>");
        con.Close();
        gvbind();
    }*/
}