using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace validation
{
    public partial class _default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnCalculate_Click(object sender, EventArgs e)
        {
            //decimal Decimal Decimal Decimal
            Decimal tip, total;
            tip = Convert.ToDecimal(txtAmount.Text) * Convert.ToDecimal(ddlPercent.SelectedValue);
            lblTip.Text = tip.ToString("c");

            total = Convert.ToDecimal(txtAmount.Text) + tip;
            lblTotal.Text = total.ToString("c");

            pnlResult.Visible = true;
        }
    }
}