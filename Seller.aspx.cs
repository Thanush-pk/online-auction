using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Net.Mail;
using System.Data;

public partial class Seller : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.AppSettings["Constr"]);
      
     //   if (!IsPostBack)
     //   {
        //    gvbind();
     //   }
        con.Open();
        string bid = Session["Username"].ToString();
        string query = "select * from  BidPrd where BuyName='"+bid+"' and Status='Clear' ";
        SqlCommand cmd = new SqlCommand(query, con);
        cmd.ExecuteNonQuery();

        SqlDataAdapter da = new SqlDataAdapter(cmd);

        DataSet ds = new DataSet();

        da.Fill(ds);

        adgrid3.DataSource = ds;
        adgrid3.DataBind();



        con.Close();
    }

  /* protected void gvbind()
    { 
        SqlConnection con = new SqlConnection(ConfigurationManager.AppSettings["ConStr"]);
        con.Open();
        string bid = Session["Username"].ToString();
        SqlCommand cmd = new SqlCommand("SELECT * FROM AdminPrd where BuyerName='"+bid+"' and Status='Clear'", con);
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



    protected void adgrid3_SelectedIndexChanged(object sender, EventArgs e)
    {




        SqlConnection con = new SqlConnection(ConfigurationManager.AppSettings["Constr"]);

        var name = Session["Username"] as string;
      
        //var a = adgrid3.Rows.Cells.Text;
        //var b = adgrid3.Rows[0].Cells[1].Text;
        //var c = adgrid3.Rows[0].Cells[2].Text;
        //var d = adgrid3.Rows[0].Cells[3].Text;
        var a = adgrid3.SelectedRow.Cells[0].Text;
        
        con.Open();




            string query3 = "delete from BidPrd where Rid='" + a + "'";
            SqlCommand cmd3 = new SqlCommand(query3, con);
            cmd3.ExecuteNonQuery();







            con.Close();
            Response.Redirect("Seller.aspx");

        }



  /*  protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {




        SqlConnection con = new SqlConnection(ConfigurationManager.AppSettings["Constr"]);

        var name = Session["Username"] as string;

        //var a = adgrid3.Rows.Cells.Text;
        //var b = adgrid3.Rows[0].Cells[1].Text;
        //var c = adgrid3.Rows[0].Cells[2].Text;
        //var d = adgrid3.Rows[0].Cells[3].Text;
        var a = GridView1.SelectedRow.Cells[0].Text;
    

        con.Open();




        string query3 = "delete from AdminPrd where Rid='" + a + "'";
        SqlCommand cmd3 = new SqlCommand(query3, con);
        cmd3.ExecuteNonQuery();







        con.Close();
        Response.Redirect("Seller.aspx");

    }*/
}


