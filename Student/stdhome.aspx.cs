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
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
           string sid = Session["sid"].ToString();

            SqlConnection con = new SqlConnection("Data Source=LAPTOP-I0S6B1GD;Initial Catalog=classroom;Integrated Security=True");
            con.Open();
            SqlCommand cmd = new SqlCommand("select * from class,inclass where class.cid=inclass.cid and sid="+sid+" ", con);
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataSet dt = new DataSet();
            da.Fill(dt);
            DataList1.DataSource = dt;
            DataList1.DataBind();
            con.Close();

        }

        protected void Unnamed1_Click(object sender, EventArgs e)
        {
            Response.Redirect("joinclass.aspx");
        }
        
    }
}