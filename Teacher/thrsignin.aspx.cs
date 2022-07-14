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
    public partial class thrsignin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {

            SqlConnection con = new SqlConnection("Data Source=LAPTOP-I0S6B1GD;Initial Catalog=classroom;Integrated Security=True");
            con.Open();
            SqlDataAdapter da = new SqlDataAdapter("SELECT * FROM[dbo].[teacherdetails] where tphone='" + TextBox1.Text + "' and tpass='" + TextBox2.Text + "'", con);
            DataTable dt = new DataTable();
            da.Fill(dt);

            if (dt != null && dt.Rows.Count > 0)
            {
                DataRow row = dt.Rows[0];
                string tid = row["tid"].ToString();
                Session["tid"] = tid;
                Response.Redirect("thrhome.aspx");
   
            }
            else
            {

                Response.Write("<h4 style='position:fixed; right:1px; top:1px; color:white; background-color:#990f02; padding:10px; border-radius:10px 0px 0px 10px; '>Wrong password or phone Number!!</h4>");
            }
        }
    }
}