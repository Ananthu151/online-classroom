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
    public partial class WebForm2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (check())
            {
                Response.Write("<h4 style='position:fixed; right:1px; top:10px; color:white; background-color:red; padding:10px; border-radius:10px 0px 0px 10px; '>Class Code already exist!!</h4>");

            }
            else
            {
                addclass();
            }
        }
        void addclass()
        {
            SqlConnection con = new SqlConnection("Data Source=LAPTOP-I0S6B1GD;Initial Catalog=classroom;Integrated Security=True");
            con.Open();
            string tid = Session["tid"].ToString();
            SqlCommand cmd = new SqlCommand("INSERT INTO [dbo].[class]([cname],[ccode],[tid],[cimage]) VALUES ('" + TextBox1.Text + "','" + TextBox2.Text + "',"+tid+ ",'" + TextBox3.Text + "')", con);
            cmd.ExecuteNonQuery();
            con.Close();
            Response.Redirect("thrhome.aspx");

        }
        bool check()
        {
            SqlConnection con = new SqlConnection("Data Source=LAPTOP-I0S6B1GD;Initial Catalog=classroom;Integrated Security=True");
            con.Open();
            SqlCommand cmd = new SqlCommand("SELECT [ccode] FROM[classroom].[dbo].[class] where ccode='" + TextBox2.Text + "'", con);
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            da.Fill(dt);
            if (dt.Rows.Count >= 1)
            {
                return true;
            }
            else
            {
                return false;
            }

        }
    }
}