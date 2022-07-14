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
    public partial class WebForm10 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            String qid = Request.QueryString["qid"];
            Session["qid"] = qid;
            SqlConnection con = new SqlConnection("Data Source=LAPTOP-I0S6B1GD;Initial Catalog=classroom;Integrated Security=True");
            con.Open();
            SqlCommand cmd = new SqlCommand("select * from question where qid=" + qid + "", con);
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataSet dt = new DataSet();
            da.Fill(dt);
            Data1.DataSource = dt;
            Data1.DataBind();


            SqlCommand cmd2 = new SqlCommand("select * from answer,studentdetails where answer.sid=studentdetails.sid and  qid=" + qid + " order by ansid desc", con);
            SqlDataAdapter da2 = new SqlDataAdapter(cmd2);
            SqlDataAdapter da4 = new SqlDataAdapter(cmd2);
            DataSet dt2 = new DataSet();
            da2.Fill(dt2);
            DataTable ddd = new DataTable();
            da4.Fill(ddd);

            if (ddd.Rows.Count >= 1)
            {
                Data.DataSource = dt2;
                Data.DataBind();
                string cid = Session["cid"].ToString();
                SqlCommand cmd3 = new SqlCommand("select [studentdetails].sid,sname,simage from studentdetails,inclass where [studentdetails].sid not in (select answer.[sid] from answer where qid="+qid+") and studentdetails.sid=inclass.sid and cid="+cid+"", con);
                SqlDataAdapter da3 = new SqlDataAdapter(cmd3);
                DataSet dt3 = new DataSet();
                da3.Fill(dt3);
                Data2.DataSource = dt3;
                Data2.DataBind();
                con.Close();

            }
            else
            {
                Response.Redirect("thrnocomments.aspx");

            }
           
            
           
           

        }
    }
}