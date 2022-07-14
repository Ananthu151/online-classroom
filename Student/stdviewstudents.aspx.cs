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
    public partial class WebForm8 : System.Web.UI.Page
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
            DataList1.DataSource = dt;
            DataList1.DataBind();



            SqlCommand cmd2 = new SqlCommand("select * from inclass,studentdetails where inclass.sid=studentdetails.sid and  cid=" + cid + " ", con);
            SqlDataAdapter dd = new SqlDataAdapter(cmd2);
            DataSet dtt = new DataSet();
            dd.Fill(dtt);
            Data2.DataSource = dtt;
            Data2.DataBind();
            con.Close();

        }
    }
}