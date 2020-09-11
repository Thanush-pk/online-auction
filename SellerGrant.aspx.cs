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

public partial class SellerGrant : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        SqlDataSource1.SelectCommand = "Select * from ProdInfo";
        if (!IsPostBack)
        {
            gvbind();
        }
    }
     protected void gvbind()
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.AppSettings["ConStr"]);
        con.Open();
        string name = Session["Username"] as string;
        SqlCommand cmd = new SqlCommand("Select * from BidPrd  where SellerNAme='"+name+"' and  Status='Pending'", con);
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
                string query = "Update BidPrd set Status='Clear' where Rid = '" + row.Cells[0].Text + "';";


                SqlCommand cmd = new SqlCommand(query, con);
                cmd.ExecuteNonQuery();
            }
            catch (Exception ex)
            {
            }
            finally
            {
                con.Close();
                Response.Redirect("SellerGrant.aspx");
            }
        }
        else
        {
            if (e.CommandName == "Reject")
            {
                int x = Convert.ToInt32(e.CommandArgument);
                GridViewRow row = GridView1.Rows[x];
                SqlConnection con = new SqlConnection(ConfigurationManager.AppSettings["ConStr"]);
                try
                {
                    con.Open();
                    string query = "delete from BidPrd  where Rid = '" + row.Cells[0].Text + "';";


                    SqlCommand cmd = new SqlCommand(query, con);
                    cmd.ExecuteNonQuery();
                }
                catch (Exception ex)
                {
                }
                finally
                {
                    con.Close();
                    Response.Redirect("SellerGrant.aspx");
                }
            }
        }
    }


}