using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace OnlineClassroom.Teacher
{
    public partial class WebForm9 : System.Web.UI.Page
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
            TextBox5.Text = TextBox2.Text +" "+ TextBox4.Text;
            DateTime d1 = Convert.ToDateTime(TextBox3.Text.ToString());
            DateTime d2 = Convert.ToDateTime(TextBox5.Text.ToString());
            int res =DateTime.Compare(d1,d2);
            if (res<=0)
            {
                SqlCommand cmd = new SqlCommand("INSERT INTO[dbo].[question]([cid],[question],[qdate],[due])VALUES(" + cid + ",'" + TextBox1.Text + "','" + TextBox3.Text + "','" + TextBox5.Text + "')", con);
                cmd.ExecuteNonQuery();
                con.Close();
                //Response.Write("<h4 style='position:fixed; right:1px; top:1px; color:white; background-color:#990f02; padding:10px; border-radius:10px 0px 0px 10px; '>Wrong password or phone Number!!</h4>"+due);
                Response.Redirect("thrclassq.aspx");

            }
            else
            {
                Response.Write("<h4 style='position:fixed; right:1px; top:1px; color:white; background-color:#990f02; padding:10px; border-radius:10px 0px 0px 10px; '>Date cannot be earlier than today!!</h4>");

            }



        }
    }
}