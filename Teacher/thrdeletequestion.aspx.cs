using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace OnlineClassroom.Student
{
    public partial class thrdeletequestion : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            String qid = Request.QueryString["qid"];
            SqlConnection con = new SqlConnection("Data Source=LAPTOP-I0S6B1GD;Initial Catalog=classroom;Integrated Security=True");
            con.Open();
            SqlCommand cmd = new SqlCommand("delete from question where qid=" + qid + "", con);
            SqlCommand cmd2 = new SqlCommand("delete from answer where ansid=" + qid + "", con);
            cmd.ExecuteNonQuery();
            cmd2.ExecuteNonQuery();
            con.Close();
            
            Response.Redirect("thrclassq.aspx");

        }
    }
}