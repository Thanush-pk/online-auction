using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;

public partial class ViewPrd : System.Web.UI.Page
{
    

        SqlConnection con = new SqlConnection(ConfigurationManager.AppSettings["ConStr"]);
        protected void Page_Load(object sender, EventArgs e)
    {

        if (!IsPostBack)
        {
            gvbind();
        }
    }

    protected void gvbind()
    {
        con.Open();
        string name = Session["Username"].ToString();
        SqlCommand cmd = new SqlCommand("Select * from SellerData where Pname='" +name+"' ", con);
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


}
