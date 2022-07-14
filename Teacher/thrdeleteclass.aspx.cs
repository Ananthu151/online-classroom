using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace OnlineClassroom.Teacher
{
    public partial class WebForm4 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {   
            String cid = Request.QueryString["cid"];
            SqlConnection con = new SqlConnection("Data Source=LAPTOP-I0S6B1GD;Initial Catalog=classroom;Integrated Security=True");
            con.Open();
            SqlCommand cmd = new SqlCommand("delete from class where cid="+cid+"", con);
            SqlCommand cmd2 = new SqlCommand("delete from inclass where cid=" + cid + "", con);
            SqlCommand cmd3 = new SqlCommand("delete from material where cid=" + cid + "", con);
            SqlCommand cmd4 = new SqlCommand("delete from question where cid=" + cid + "", con);
            SqlCommand cmd5 = new SqlCommand("delete from comment where cid=" + cid + "", con);
            SqlCommand cmd6 = new SqlCommand("delete from answer where cid=" + cid + "", con);
            SqlCommand cmd7 = new SqlCommand("delete from asanswer where cid=" + cid + "", con);
            SqlCommand cmd8 = new SqlCommand("delete from asquestion where cid=" + cid + "", con);
            cmd.ExecuteNonQuery();
            cmd2.ExecuteNonQuery();
            cmd3.ExecuteNonQuery();
            cmd4.ExecuteNonQuery();
            cmd5.ExecuteNonQuery();
            cmd6.ExecuteNonQuery();
            cmd7.ExecuteNonQuery();
            cmd8.ExecuteNonQuery();
            con.Close();
            Response.Redirect("thrhome.aspx");

        }
    }
}