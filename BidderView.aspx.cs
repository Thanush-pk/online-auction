using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;

public partial class BidderView : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.AppSettings["ConStr"]);
    protected void Page_Load(object sender, EventArgs e)
    {
        string bid = Session["Username"].ToString();
        if (!IsPostBack)
        {
            gvbind();
            bindview();
        }
    }
    protected void gvbind()
    {
        string bid = Session["Username"].ToString();
        con.Open();
        SqlCommand cmd = new SqlCommand("Select * from SellerData where Bid='"+bid+"'", con);
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

    protected void bindview()
    {
        string bid = Session["Username"].ToString();
        SqlConnection con = new SqlConnection(ConfigurationManager.AppSettings["ConStr"]);
        con.Open();
        SqlCommand cmd = new SqlCommand("Select * from ProdInfo where bid='" + bid + "'", con);
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


}
