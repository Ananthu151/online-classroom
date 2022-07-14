using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace OnlineClassroom.Teacher
{
    public partial class thrdeleteanswer : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            String ansid = Request.QueryString["ansid"];
            SqlConnection con = new SqlConnection("Data Source=LAPTOP-I0S6B1GD;Initial Catalog=classroom;Integrated Security=True");
            con.Open();
            SqlCommand cmd = new SqlCommand("delete from answer where ansid=" + ansid + "", con);
            cmd.ExecuteNonQuery();
            string qid = Session["qid"].ToString();
            con.Close();
            Response.Redirect("thrviewanswers.aspx?qid=" + qid);

        }
    }
}