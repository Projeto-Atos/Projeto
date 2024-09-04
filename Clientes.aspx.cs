using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Projeto
{
    public partial class Clientes : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                FormView1.PageIndex = 0;
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            FormView1.PageIndex = 0;
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            if (FormView1.PageIndex > 0)
            {
                FormView1.PageIndex--;
            }
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            if (FormView1.PageIndex < FormView1.PageCount - 1)
            {
                FormView1.PageIndex++;
            }
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            FormView1.PageIndex = FormView1.PageCount - 1;
        }

        protected void Button5_Click(object sender, EventArgs e)
        {
            FormView1.ChangeMode(FormViewMode.Edit);
            Button5.Enabled = false;
            Button6.Enabled = true;
        }

        protected void Button6_Click(object sender, EventArgs e)
        {
            if (FormView1.CurrentMode == FormViewMode.Edit)
            {
                try
                {
                    FormView1.UpdateItem(false);
                }
                catch (Exception ex)
                {
                    // Log the error or display a message
                  Response.Write("Error updating item: " + ex.Message);
                }
                finally
                {
                    FormView1.ChangeMode(FormViewMode.ReadOnly);
                    Button5.Enabled = true;
                    Button6.Enabled = false;
                }
            }
        }
    }
}
