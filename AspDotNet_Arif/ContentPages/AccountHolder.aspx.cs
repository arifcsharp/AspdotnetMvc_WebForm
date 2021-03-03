using AspDotNet_Arif.BL;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AspDotNet_Arif.ContentPages
{
    public partial class AccountHolder : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnAdd_Click(object sender, EventArgs e)
        {
            try
            {
                AccountHolderAdd add = new AccountHolderAdd();
                add.AccountName = txtAccountName.Text;
                add.Address = txtAddress.Text;
                add.Gender = ddlGender.SelectedValue;
                add.DOB = txtDOB.Text;
                add.MobileNo = txtMobile.Text;
                add.BranchID = Convert.ToInt32(ddlBid.SelectedValue);

                bool status = add.Save();

                if (status == true)
                {
                    ShowAlert("You Have Successfully Registered");
                }
                else
                {
                    ShowAlert("Failed To Register");
                }

            }
            catch (Exception ex)
            {
                ShowAlert(ex.Message.ToString());
            }
        }
        private void ShowAlert(string strmsg)
        {
            string str1;
            str1 = "<script language = 'javascript' type = 'text/javascript'> alert('" + strmsg + "');</script>";
            ClientScript.RegisterClientScriptBlock(this.GetType(), "JS", str1);
        }

        protected void dgViewAccHolder_SelectedIndexChanged(object sender, EventArgs e)
        {
            lblAno.Text = dgViewAccHolder.SelectedRow.Cells[1].Text;
            txtAccountName.Text = dgViewAccHolder.SelectedRow.Cells[2].Text;
            txtAddress.Text = dgViewAccHolder.SelectedRow.Cells[3].Text;
            ddlGender.Text = dgViewAccHolder.SelectedRow.Cells[4].Text;
            txtDOB.Text = dgViewAccHolder.SelectedRow.Cells[5].Text;
            txtMobile.Text = dgViewAccHolder.SelectedRow.Cells[6].Text;
            ddlBid.Text = dgViewAccHolder.SelectedRow.Cells[7].Text;

        }
    }
}