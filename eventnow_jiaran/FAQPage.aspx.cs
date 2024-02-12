using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace eventnow_jiaran
{
    public partial class FAQPage : System.Web.UI.Page
    {
        FAQ aFAQ = new FAQ();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                bind();
            }
        }

        protected void bind()
        {
            List<FAQ> FAQList = aFAQ.getFAQAll();
            gvFAQ.DataSource = FAQList;
            gvFAQ.DataBind();

        }

        protected void btn_Back_Click(object sender, EventArgs e)
        {

        }
    }
}