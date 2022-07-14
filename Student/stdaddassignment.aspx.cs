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
    public partial class WebForm14 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            String asid = Request.QueryString["asid"];
            Session["asid"] = asid;
            SqlConnection con = new SqlConnection("Data Source=LAPTOP-I0S6B1GD;Initial Catalog=classroom;Integrated Security=True");
            con.Open();
            SqlCommand cmd = new SqlCommand("select * from asquestion where asid=" + asid + "", con);
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataSet dt = new DataSet();
            da.Fill(dt);
            Data1.DataSource = dt;
            Data1.DataBind();

            string sid = Session["sid"].ToString();
            SqlCommand cmd2 = new SqlCommand("select * from asanswer,studentdetails where asanswer.sid=studentdetails.sid and  asid=" + asid + " and [studentdetails].sid=" + sid + " order by asid desc", con);
            SqlDataAdapter da2 = new SqlDataAdapter(cmd2);
            DataSet dt2 = new DataSet();
            da2.Fill(dt2);
            Data.DataSource = dt2;
            Data.DataBind();

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string sid = Session["sid"].ToString();
            string cid = Session["cid"].ToString();
            String asid = Request.QueryString["asid"];
            SqlConnection con = new SqlConnection("Data Source=LAPTOP-I0S6B1GD;Initial Catalog=classroom;Integrated Security=True");
            con.Open();
            SqlCommand cmd12 = new SqlCommand("SELECT * from asanswer where asid=" + asid + " and sid=" + sid + "", con);
            SqlDataAdapter da12 = new SqlDataAdapter(cmd12);
            DataTable dt12 = new DataTable();
            da12.Fill(dt12);
            if (dt12.Rows.Count < 1)
            {
                SqlDataAdapter da21 = new SqlDataAdapter(" select asdue from asquestion where asid=" + asid + "", con);
                DataTable dt21 = new DataTable();
                da21.Fill(dt21);
                DataRow row = dt21.Rows[0];
                string asdue = row["asdue"].ToString();


                TextBox3.Text = DateTime.Now.ToString("yyyy/MM/dd HH:mm");

                DateTime d1 = Convert.ToDateTime(TextBox3.Text.ToString());
                DateTime d2 = Convert.ToDateTime(asdue);
                int res = DateTime.Compare(d1, d2);
                if (res <= 0)
                {
                    SqlCommand cmd33 = new SqlCommand("INSERT INTO [dbo].[asanswer]([cid],[asid],[sid],[asadate],[asanswer]) VALUES (" + cid + "," + asid + "," + sid + ",'" + TextBox3.Text + "','" + TextBox1.Text + "')", con);
                    cmd33.ExecuteNonQuery();
                    con.Close();
                    Response.Redirect("stdaddassignment.aspx?asid=" + asid);

                }
                else
                {
                    Response.Write("<h4 style='position:fixed; z-index:99; right:1px; top:1px; color:white; background-color:#00264D; padding:10px; border-radius:10px 0px 0px 10px; '>Your are late!</h4>");

                }
            }

            else
            {

                Response.Write("<h4 style='position:fixed; z-index:99; right:1px; top:1px; color:white; background-color:#00264D; padding:10px; border-radius:10px 0px 0px 10px; '>Your assignment is already registered!</h4>");


            }


        }
    }
}