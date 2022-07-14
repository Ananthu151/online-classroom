using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace OnlineClassroom.Teacher
{
    public partial class thrdeleteassignment : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            String asid = Request.QueryString["asid"];
            SqlConnection con = new SqlConnection("Data Source=LAPTOP-I0S6B1GD;Initial Catalog=classroom;Integrated Security=True");
            con.Open();
            SqlCommand cmd = new SqlCommand("delete from asquestion where asid=" + asid + "", con);
            SqlCommand cmd2 = new SqlCommand("delete from asanswer where asid=" + asid + "", con);
            cmd.ExecuteNonQuery();
            cmd2.ExecuteNonQuery();
            con.Close();

            Response.Redirect("thrclassassignment.aspx");

        }
    }
}