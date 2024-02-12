using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace eventnow_jiaran
{
    public partial class ReportCreate : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        public class RandomIdGenerator
        {
            private static Random random = new Random();

            public static string GenerateRandomNumericId(int length)
            {
                const string digits = "0123456789";
                char[] id = new char[length];

                for (int i = 0; i < length; i++)
                {
                    id[i] = digits[random.Next(digits.Length)];
                }

                return new string(id);
            }
        }

        protected void btn_Submit_Click(object sender, EventArgs e)
        {
            int result = 0;
            string image = "";

            if (ErrorImage.HasFile == true)
            {
                image = "Images\\" + ErrorImage.FileName;
            }
            string randomNumericId = RandomIdGenerator.GenerateRandomNumericId(8);

            Report prod = new Report(randomNumericId, ddl_ErrorType.Text, tb_ErrorDescription.Text, ErrorImage.FileName);
            result = prod.ReportCreate();

            if (result > 0)
            {
                string saveimg = Server.MapPath(" ") + "\\" + image;
                lbl_Result.Text = saveimg.ToString();
                ErrorImage.SaveAs(saveimg);


                Response.Write("<script>alert('Thank you for reporting the error.');</script>");
            }
            else { Response.Write("<script>alert('Report error NOT successful');</script>"); }

        }
        protected void btn_Back_Click(object sender, EventArgs e)
        {

        }

    }
}
