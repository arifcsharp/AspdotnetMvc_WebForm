using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace AspDotNet_Arif.UserControls
{
    public partial class MyUserControlPages : System.Web.UI.UserControl
    {
        string cs = ConfigurationManager.ConnectionStrings["DefaultConnection"].ConnectionString;
        SqlConnection con;
        SqlCommand cmd;
        SqlDataAdapter adatpter;
        DataTable dt;

        private void DataLoad()
        {
            if (Page.IsPostBack)
            {
                dgViewBranch.DataBind();
            }
        }

        public void CleanAllControl()
        {
            txtBranchName.Text = "";
            txtCity.Text = "";
            lblMessage.Text = "";
        }
        protected void Page_Load(object sender, EventArgs e)
        {
            DataLoad();
        }

        protected void btnAdd_Click(object sender, EventArgs e)
        {
            if (txtBranchName.Text != "" && txtCity.Text != "")
            {
                using (con = new SqlConnection(cs))
                {
                    con.Open();
                    cmd = new SqlCommand("Insert into Branch(BranchName,City) Values(@branchname,@city)", con);
                    cmd.Parameters.AddWithValue("@branchname", txtBranchName.Text);
                    cmd.Parameters.AddWithValue("@city", txtCity.Text);
                    cmd.ExecuteNonQuery();
                    DataLoad();
                    con.Close();

                    CleanAllControl();
                }
            }
            else
            {
                lblMessage.Text = "Please Provide all data";
            }
        }

        protected void btnUpdate_Click(object sender, EventArgs e)
        {
            if (txtBranchName.Text != "" && txtCity.Text != "")
            {
                using (con = new SqlConnection(cs))
                {
                    con.Open();
                    cmd = new SqlCommand("Update Branch  set BranchName=@branchname,City=@city where BranchID=@branchid", con);
                    cmd.Parameters.AddWithValue("@branchid", lblBId.Text);
                    cmd.Parameters.AddWithValue("@branchname", txtBranchName.Text);
                    cmd.Parameters.AddWithValue("@city", txtCity.Text);
                    cmd.ExecuteNonQuery();
                    DataLoad();
                    con.Close();

                    CleanAllControl();
                }
            }
            else
            {
                lblMessage.Text = "PLease Select any row or Cell";
            }
        }

        protected void btnDelete_Click(object sender, EventArgs e)
        {
            if (txtBranchName.Text != "" && txtCity.Text != "")
            {
                using (con = new SqlConnection(cs))
                {
                    con.Open();
                    cmd = new SqlCommand("delete Branch where BranchID=@branchid", con);
                    cmd.Parameters.AddWithValue("@branchid", lblBId.Text);

                    cmd.ExecuteNonQuery();
                    DataLoad();
                    con.Close();
                    CleanAllControl();
                }
            }
            else
            {
                lblMessage.Text = "Please Select any row or cell";
            }
        }

        protected void dgViewBranch_SelectedIndexChanged1(object sender, EventArgs e)
        {
            lblBId.Text = dgViewBranch.SelectedRow.Cells[1].Text;
            txtBranchName.Text = dgViewBranch.SelectedRow.Cells[2].Text;
            txtCity.Text = dgViewBranch.SelectedRow.Cells[3].Text;
        }
    }
}