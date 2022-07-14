using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace OnlineClassroom.Teacher
{
    public partial class WebForm5 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection("Data Source=LAPTOP-I0S6B1GD;Initial Catalog=classroom;Integrated Security=True");
            con.Open();
            string cid = Session["cid"].ToString();
           
            TextBox3.Text = DateTime.Now.ToString("yyyy/MM/dd HH:mm");

            SqlCommand cmd = new SqlCommand("INSERT INTO[dbo].[material]([cid],[mname],[mdate],[files])VALUES("+cid+ ",'" + TextBox1.Text + "','" + TextBox3.Text + "','" + TextBox2.Text + "')",con);
            cmd.ExecuteNonQuery();
            con.Close();
            //Response.Write("<h4 style='position:fixed; right:1px; top:1px; color:white; background-color:#990f02; padding:10px; border-radius:10px 0px 0px 10px; '>Wrong password or phone Number!!</h4>"+now);
           Response.Redirect("thrclassall.aspx?cid="+cid);
        }
    }
}