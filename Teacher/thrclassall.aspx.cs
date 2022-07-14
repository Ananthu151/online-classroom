using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace OnlineClassroom.Teacher
{
    public partial class WebForm3 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            String cid = Request.QueryString["cid"];
            Session["cid"] = cid;
            SqlConnection con = new SqlConnection("Data Source=LAPTOP-I0S6B1GD;Initial Catalog=classroom;Integrated Security=True");
            con.Open();
            SqlCommand cmd = new SqlCommand("select * from class where cid=" + cid + "", con);
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataSet dt = new DataSet();
            da.Fill(dt);
            DataList1.DataSource = dt;
            DataList1.DataBind();
          

           
            SqlCommand cmd2 = new SqlCommand("select * from material where cid=" + cid + " order by mid desc ", con);
            SqlDataAdapter dd = new SqlDataAdapter(cmd2);
            DataSet dtt = new DataSet();
            dd.Fill(dtt);
            Data2.DataSource = dtt;
            Data2.DataBind();
            con.Close();

        }

        protected void Unnamed1_Click(object sender, EventArgs e)
        {

        }

        protected void Unnamed2_Click(object sender, EventArgs e)
        {
            Response.Redirect("thrclassq.aspx");
        }
        protected void Unnamed3_Click(object sender, EventArgs e)
        {
            Response.Redirect("thrclassassignment.aspx");
        }
    }
}