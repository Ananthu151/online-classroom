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
    public partial class WebForm5 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            String cid = Session["cid"].ToString();
            SqlConnection con = new SqlConnection("Data Source=LAPTOP-I0S6B1GD;Initial Catalog=classroom;Integrated Security=True");
            con.Open();
            SqlCommand cmd = new SqlCommand("select * from class where cid=" + cid + "", con);
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataSet dt = new DataSet();
            da.Fill(dt);
            D1.DataSource = dt;
            D1.DataBind();



            SqlCommand cmd2 = new SqlCommand("select * from asquestion where cid=" + cid + " order by asid desc ", con);
            SqlDataAdapter dd = new SqlDataAdapter(cmd2);
            DataSet dtt = new DataSet();
            dd.Fill(dtt);
            D2.DataSource = dtt;
            D2.DataBind();
            con.Close();

        }

        protected void Unnamed1_Click(object sender, EventArgs e)
        {
            string cid = Session["cid"].ToString();
            Response.Redirect("stdclassall.aspx?cid=" + cid);
        }

        protected void Unnamed3_Click(object sender, EventArgs e)
        {

        }
        protected void Unnamed2_Click(object sender, EventArgs e)
        {
            Response.Redirect("stdclassq.aspx");

        }
    }
}