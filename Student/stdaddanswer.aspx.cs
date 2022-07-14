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
    public partial class WebForm13 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            String qid = Request.QueryString["qid"];
            Session["qid"] = qid;
            SqlConnection con = new SqlConnection("Data Source=LAPTOP-I0S6B1GD;Initial Catalog=classroom;Integrated Security=True");
            con.Open();
            SqlCommand cmd = new SqlCommand("select * from question where qid=" + qid + "", con);
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataSet dt = new DataSet();
            da.Fill(dt);
            Data1.DataSource = dt;
            Data1.DataBind();

            string sid = Session["sid"].ToString();
            SqlCommand cmd2 = new SqlCommand("select * from answer,studentdetails where answer.sid=studentdetails.sid and  qid=" + qid + " and [studentdetails].sid=" + sid + " order by ansid desc", con);
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
            String qid = Request.QueryString["qid"];
            SqlConnection con = new SqlConnection("Data Source=LAPTOP-I0S6B1GD;Initial Catalog=classroom;Integrated Security=True");
            con.Open();
            SqlCommand cmd12 = new SqlCommand("SELECT * from answer where qid=" + qid + " and sid=" + sid + "", con);
            SqlDataAdapter da12 = new SqlDataAdapter(cmd12);
            DataTable dt12 = new DataTable();
            da12.Fill(dt12);
            if (dt12.Rows.Count < 1)
            {
                SqlDataAdapter da21 = new SqlDataAdapter(" select due from question where qid="+qid+"", con);
                DataTable dt21 = new DataTable();
                da21.Fill(dt21);
                DataRow row = dt21.Rows[0];
                string due = row["due"].ToString();
               

                TextBox3.Text = DateTime.Now.ToString("yyyy/MM/dd HH:mm");

                DateTime d1 = Convert.ToDateTime(TextBox3.Text.ToString());
                DateTime d2 = Convert.ToDateTime(due);
                int res = DateTime.Compare(d1, d2);
                if (res <= 0)
                {
                    SqlCommand cmd33 = new SqlCommand("INSERT INTO [dbo].[answer]([cid],[qid],[sid],[adate],[answer]) VALUES ("+cid+","+qid+","+sid+",'" + TextBox3.Text + "','" + TextBox1.Text + "')", con);
                    cmd33.ExecuteNonQuery();
                    con.Close();
                    Response.Redirect("stdaddanswer.aspx?qid="+qid);

                }
                else
                {
                    Response.Write("<h4 style='position:fixed; z-index:99; right:1px; top:1px; color:white; background-color:#00264D; padding:10px; border-radius:10px 0px 0px 10px; '>Your are late!</h4>");

                }
            }

            else
            {

                Response.Write("<h4 style='position:fixed; z-index:99; right:1px; top:1px; color:white; background-color:#00264D; padding:10px; border-radius:10px 0px 0px 10px; '>Your answer is already registered!</h4>");


            }
   
            
        }
    }
}
