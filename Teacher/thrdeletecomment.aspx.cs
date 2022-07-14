using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace OnlineClassroom.Teacher
{
    public partial class thrdeletecomment : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            String cmtid = Request.QueryString["cmtid"];
            SqlConnection con = new SqlConnection("Data Source=LAPTOP-I0S6B1GD;Initial Catalog=classroom;Integrated Security=True");
            con.Open();
            SqlCommand cmd = new SqlCommand("delete from comment where cmtid=" + cmtid + "", con);
            cmd.ExecuteNonQuery();
            string mid = Session["mid"].ToString();
            con.Close();
            Response.Redirect("thrviewcomments.aspx?mid="+mid);

        }
    }
}