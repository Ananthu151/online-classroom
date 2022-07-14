using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace OnlineClassroom.Student
{
    public partial class WebForm6 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            String mid = Request.QueryString["mid"];
            Session["mid"] = mid;
            SqlConnection con = new SqlConnection("Data Source=LAPTOP-I0S6B1GD;Initial Catalog=classroom;Integrated Security=True");
            con.Open();
            SqlCommand cmd = new SqlCommand("select * from material where mid=" + mid + "", con);
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataSet dt = new DataSet();
            da.Fill(dt);
            Data1.DataSource = dt;
            Data1.DataBind();


            SqlCommand cmd2 = new SqlCommand("select * from comment,studentdetails where comment.sid=studentdetails.sid and  mid=" + mid + " order by cmtid desc", con);
            SqlDataAdapter da2 = new SqlDataAdapter(cmd2);
            DataSet dt2 = new DataSet();
            da2.Fill(dt2);
            Data.DataSource = dt2;
            Data.DataBind();
            con.Close();

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection("Data Source=LAPTOP-I0S6B1GD;Initial Catalog=classroom;Integrated Security=True");
            con.Open();
            String mid = Request.QueryString["mid"];
            string sid = Session["sid"].ToString();
            string cid = Session["cid"].ToString();
            TextBox3.Text = DateTime.Now.ToString("yyyy/MM/dd HH:mm");
            SqlCommand cmd = new SqlCommand("INSERT INTO [dbo].[comment]([mid],[sid],[cid],[cdate],[comment]) VALUES ("+mid+","+sid+","+cid+ ",'" + TextBox3.Text + "','" + TextBox1.Text + "')", con);
            cmd.ExecuteNonQuery();
            con.Close();
            Response.Redirect("stdviewcomments.aspx?mid=" + mid);

        }
    }
}