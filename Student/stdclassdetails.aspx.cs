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
    public partial class WebForm7 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string cid = Session["cid"].ToString();
            SqlConnection con = new SqlConnection("Data Source=LAPTOP-I0S6B1GD;Initial Catalog=classroom;Integrated Security=True");
            con.Open();
            SqlCommand cmd = new SqlCommand("select * from class where cid=" + cid + "", con);
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataSet dt = new DataSet();
            da.Fill(dt);
            Data1.DataSource = dt;
            Data1.DataBind();

        }
    }
}