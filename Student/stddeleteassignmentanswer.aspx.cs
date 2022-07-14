using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace OnlineClassroom.Student
{
    public partial class stddeleteassignmentanswer : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            String asaid = Request.QueryString["asaid"];
            SqlConnection con = new SqlConnection("Data Source=LAPTOP-I0S6B1GD;Initial Catalog=classroom;Integrated Security=True");
            con.Open();
            SqlCommand cmd = new SqlCommand("delete from asanswer where asaid=" + asaid + "", con);
            cmd.ExecuteNonQuery();
            string asid = Session["asid"].ToString();
            con.Close();
            Response.Redirect("stdaddassignment.aspx?asid=" + asid);

        }
    }
}