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
    public partial class WebForm2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection("Data Source=LAPTOP-I0S6B1GD;Initial Catalog=classroom;Integrated Security=True");
            con.Open();
            SqlDataAdapter da = new SqlDataAdapter("SELECT cid FROM[dbo].[class] where ccode='" + TextBox1.Text + "'", con);
            DataTable dt = new DataTable();
            da.Fill(dt);

            if (dt != null && dt.Rows.Count > 0)
            {
                DataRow row = dt.Rows[0];
                string cid = row["cid"].ToString();
                string sid = Session["sid"].ToString();
                SqlDataAdapter sda = new SqlDataAdapter("SELECT * FROM[dbo].[inclass] where cid="+cid+" and sid="+sid+"", con);
                DataTable dd = new DataTable();
                sda.Fill(dd);

                if (dd != null && dd.Rows.Count > 0)
                {
                    Response.Write("<h4 style='position:fixed; right:1px; top:1px; color:white; background-color:#00264D; padding:10px; border-radius:10px 0px 0px 10px; '>Already Joined in the Class!!</h4>");

                }
                else
                {
                    SqlCommand cmd = new SqlCommand("INSERT INTO [dbo].[inclass]([cid],[sid]) VALUES ("+cid+","+sid+")", con);
                    cmd.ExecuteNonQuery();
                    con.Close();
                    Response.Write("<h4 style='position:fixed; right:1px; top:1px; color:white; background-color:#00264D; padding:10px; border-radius:10px 0px 0px 10px; '>Class Joined Successfully!!</h4>");

                }


            }
            else
            {

                Response.Write("<h4 style='position:fixed; right:1px; top:1px; color:white; background-color:#00264D; padding:10px; border-radius:10px 0px 0px 10px; '>No Class Exist!!</h4>");
            }

        }
       
    }
}