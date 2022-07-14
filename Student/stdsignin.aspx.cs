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
    public partial class stdsignin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection("Data Source=LAPTOP-I0S6B1GD;Initial Catalog=classroom;Integrated Security=True");
            con.Open();
            SqlDataAdapter da = new SqlDataAdapter("SELECT * FROM[dbo].[studentdetails] where sphone='"+ TextBox1.Text+ "' and spass='"+TextBox2.Text+"'", con);
            DataTable dt = new DataTable();
            da.Fill(dt);

            if (dt != null && dt.Rows.Count > 0)
            {
                DataRow row = dt.Rows[0];
                string sid = row["sid"].ToString();
                Session["sid"] = sid;
                Response.Redirect("stdhome.aspx");
            }
            else
            {
                
                Response.Write("<h4 style='position:fixed; right:1px; top:1px; color:white; background-color:#00264D; padding:10px; border-radius:10px 0px 0px 10px; '>Wrong password or phone Number!!</h4>");
            }
        }
    }
}