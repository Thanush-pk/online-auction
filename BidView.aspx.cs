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

public partial class BidView : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        //string Id = Session["id"].ToString();

        SqlConnection con = new SqlConnection(ConfigurationManager.AppSettings["Constr"]);
        string bid = Session["Username"].ToString();
     //   if (!IsPostBack)
      //  {
           // gvbind();
       // }
        con.Open();
        var dtt = DateTime.Today.ToString("MM-dd-yyyy");
        string query = "select * from SellerData where ldate >= '" +dtt+ "' and(Status = 'Pending' or Status = 'Approved')";
        SqlCommand cmd = new SqlCommand(query, con);
        cmd.ExecuteNonQuery();





        SqlDataAdapter da = new SqlDataAdapter(cmd);

        DataSet ds = new DataSet();

        da.Fill(ds);

        adgrid3.DataSource = ds;
        adgrid3.DataBind();



        con.Close();



    }
  /*  protected void gvbind()
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.AppSettings["ConStr"]);
        con.Open();
        var dt = DateTime.Today.ToString("MM-dd-yyyy");
        SqlCommand cmd = new SqlCommand("select* from  ProdInfo where  ldate >= '" + dt + "' and(Status = 'Pending' or Status = 'Approved')", con);
        
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
        //string Id = Session["id"].ToString();
        //string mail = Session["Mail"].ToString();
        //string sname = Session["abcd"].ToString();
        //string phone = Session["phone"].ToString();
        //string city = Session["city"].ToString();
        //string quali = Session["qualification"].ToString();
        //string resume = Session["resume"].ToString();



        string cs = cst.Value;
        SqlConnection con = new SqlConnection(ConfigurationManager.AppSettings["Constr"]);
     
        var name = Session["Username"] as string;
        var date = DateTime.Now.ToString("dd/MM/yyyy");
        //string amt = "null";
        string sts = "Pending";
        string bid = "bid";
        Random z = new Random();
        String Rid = "u" + z.Next(123, 99999).ToString();
        //var a = adgrid3.Rows.Cells.Text;
        //var b = adgrid3.Rows[0].Cells[1].Text;
        //var c = adgrid3.Rows[0].Cells[2].Text;
        //var d = adgrid3.Rows[0].Cells[3].Text;
        var a = adgrid3.SelectedRow.Cells[0].Text;
        var b = adgrid3.SelectedRow.Cells[1].Text;
        var c = adgrid3.SelectedRow.Cells[2].Text;
        var d = adgrid3.SelectedRow.Cells[3].Text;
        var ee = adgrid3.SelectedRow.Cells[4].Text;
        var f = adgrid3.SelectedRow.Cells[5].Text;
        var g = adgrid3.SelectedRow.Cells[6].Text;
        var ld = adgrid3.SelectedRow.Cells[7].Text;
        con.Open();


        //string query1 = "select * from  BidPrd where Pid='" + a + "'";
        //SqlCommand cmd1 = new SqlCommand(query1, con);
        //SqlDataReader dr = cmd1.ExecuteReader();
        //if (dr.HasRows)
        //{
        //    while (dr.Read())
        //    {
        //        Response.Write("<script>alert('You alread Bid this Product!!!');</script>");
        //        Response.Redirect("BidView.aspx");
        //    }
        //    dr.Close();
        //}
        //else
        //{
            //string query = "update UserData set Cid = '" + a + "', Company = '" + b + "', Post = '" + c + "',Studies='" + d + "' where Mail='" + mail + "' ";

            //SqlCommand cmd = new SqlCommand(query, con);
            //cmd.ExecuteNonQuery();
            string query2 = "insert into BidPrd values('"+ Rid + "','" + a + "','" + c + "','" + ee + "','"+g+"','" + f + "','" + date + "','" + cs + "','" + name + "','" + sts + "')";
            SqlCommand cmd2 = new SqlCommand(query2, con);
            cmd2.ExecuteNonQuery();




            string query3 = "Update SellerData set Status='Approved', bid='" + bid + "' where Pid='" + a + "'";
            SqlCommand cmd3 = new SqlCommand(query3, con);
            cmd3.ExecuteNonQuery();




       

        con.Close();
            Response.Redirect("BidView.aspx");

        }
    

  /*  protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.AppSettings["Constr"]);
        con.Open();
        var name = Session["Username"] as string;
        var date = DateTime.Now.ToString("dd/MM/yyyy");

        string sts = "Pending";
        string bid = "bid";

        Random z = new Random();
        String Rid = "u" + z.Next(123, 99999).ToString();


        var p = GridView1.SelectedRow.Cells[0].Text;
        var q = GridView1.SelectedRow.Cells[1].Text;
        var r = GridView1.SelectedRow.Cells[2].Text;
        var s = GridView1.SelectedRow.Cells[3].Text;
        var w = GridView1.SelectedRow.Cells[4].Text;
        var y = GridView1.SelectedRow.Cells[5].Text;

      
        //string query5 = "select * from  AdminPrd where Prodid='" + p + "'";
        //SqlCommand cmd5 = new SqlCommand(query5, con);
        //SqlDataReader dr1 = cmd5.ExecuteReader();
        //if (dr1.HasRows)
        //{

        //    while (dr1.Read())
        //    {
        //        Response.Write("<script>alert('You alread Bid this Product!!!');</script>");
        //        Response.Redirect("userhhome.aspx");
        //    }
        //    dr1.Close();

        //}

       

        //else
        //{
            

            //string query = "update UserData set Cid = '" + a + "', Company = '" + b + "', Post = '" + c + "',Studies='" + d + "' where Mail='" + mail + "' ";

            //SqlCommand cmd = new SqlCommand(query, con);
            //cmd.ExecuteNonQuery();
            string query6 = "insert into AdminPrd values('" + Rid + "','" + p + "','" + q + "','" + r + "','" + s + "','" + w + "','" + y + "','" + sts + "','" + sts + "','" + name + "')";
            SqlCommand cmd6 = new SqlCommand(query6, con);
            cmd6.ExecuteNonQuery();



            string query7 = "Update ProdInfo set Status='Approved', bid='" + bid + "' where Prodid='" + p + "'";
            SqlCommand cmd7 = new SqlCommand(query7, con);
            cmd7.ExecuteNonQuery();








            Response.Redirect("BidView.aspx");
            con.Close();

        }*/
    }

    
    

