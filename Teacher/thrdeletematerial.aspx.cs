using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace OnlineClassroom.Teacher
{
    public partial class thrdeletematerial : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            String mid = Request.QueryString["mid"];
            SqlConnection con = new SqlConnection("Data Source=LAPTOP-I0S6B1GD;Initial Catalog=classroom;Integrated Security=True");
            con.Open();
            SqlCommand cmd = new SqlCommand("delete from material where mid=" + mid + "", con);
            SqlCommand cmd2 = new SqlCommand("delete from comment where mid=" + mid + "", con);
            cmd.ExecuteNonQuery();
            cmd2.ExecuteNonQuery();
            con.Close();
            string cid = Session["cid"].ToString();
            Response.Redirect("thrclassall.aspx?cid="+cid);

        }
    }
}