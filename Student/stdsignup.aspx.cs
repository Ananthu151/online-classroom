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
    public partial class stdsignup : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (check())
            {
                Response.Write("<h4 style='position:fixed; right:1px; top:1px; color:white; background-color:#00264D; padding:10px; border-radius:10px 0px 0px 10px; '>User already exist!!</h4>");

            }
            else
            {
                signup();
            }
        }
        void signup()
        {
            SqlConnection con = new SqlConnection("Data Source=LAPTOP-I0S6B1GD;Initial Catalog=classroom;Integrated Security=True");
            con.Open();
            SqlCommand cmd = new SqlCommand("INSERT INTO [dbo].[studentdetails]([sname],[sphone],[spass],[simage]) VALUES ('" + TextBox1.Text + "','" + TextBox2.Text + "','" + TextBox3.Text + "','" + TextBox4.Text + "')", con);
            cmd.ExecuteNonQuery();
            con.Close();
            Response.Write("<h4 style='position:fixed; right:1px; top:1px; color:white; background-color:#00264D; padding:10px; border-radius:10px 0px 0px 10px; '>Signup Succesfully please Signin!!</h4>");

        }
        bool check()
        {
            SqlConnection con = new SqlConnection("Data Source=LAPTOP-I0S6B1GD;Initial Catalog=classroom;Integrated Security=True");
            con.Open();
            SqlCommand cmd = new SqlCommand("SELECT [sphone] FROM[classroom].[dbo].[studentdetails] where sphone='"+TextBox2.Text+"'", con);
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            da.Fill(dt);
            if (dt.Rows.Count >=1)
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