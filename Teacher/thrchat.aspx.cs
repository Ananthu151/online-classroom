using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace OnlineClassroom.Teacher
{
    public partial class WebForm15 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection("Data Source=LAPTOP-I0S6B1GD;Initial Catalog=classroom;Integrated Security=True");
            con.Open();
            String tid = Session["tid"].ToString();
            String sid = Session["sid"].ToString();
            SqlCommand cmd2 = new SqlCommand("select * from studentdetails where sid=" + sid + "", con);
            SqlDataAdapter da2 = new SqlDataAdapter(cmd2);
            DataSet dt2 = new DataSet();
            da2.Fill(dt2);
            Data2.DataSource = dt2;
            Data2.DataBind();


           
           
            SqlCommand cmd = new SqlCommand("select * from chat where tid="+tid+" and sid="+sid+"", con);
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataSet dt = new DataSet();
            da.Fill(dt);
            Data1.DataSource = dt;
            Data1.DataBind();

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            String tid = Session["tid"].ToString();
            String sid = Session["sid"].ToString();
            SqlConnection con = new SqlConnection("Data Source=LAPTOP-I0S6B1GD;Initial Catalog=classroom;Integrated Security=True");
            con.Open();
           
            SqlCommand cmd = new SqlCommand("INSERT INTO [dbo].[chat]([sid],[tid],[tmeg],[smeg]) VALUES ("+sid+","+tid+",'" + TextBox1.Text + "','none')", con);
            cmd.ExecuteNonQuery();
            con.Close();
           
            Response.Redirect("thrchat.aspx#bottom");


        }
    }
}