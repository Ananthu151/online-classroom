using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace OnlineClassroom.Teacher
{
    public partial class thrtochat : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            String sid = Request.QueryString["sid"];
            Session["sid"] = sid;
            Response.Redirect("thrchat.aspx#bottom");

        }
    }
}