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
    public partial class stdtochat : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection("Data Source=LAPTOP-I0S6B1GD;Initial Catalog=classroom;Integrated Security=True");
            con.Open();
            string cid = Session["cid"].ToString();
            SqlDataAdapter da = new SqlDataAdapter("SELECT tid FROM[dbo].[class] where cid="+cid+"", con);
            DataTable dt = new DataTable();
            da.Fill(dt);
                DataRow row = dt.Rows[0];
                string tid = row["tid"].ToString();
                Session["tid"] = tid;
                
           
           
           
            Response.Redirect("stdchat.aspx#bottom");

        }
    }
}