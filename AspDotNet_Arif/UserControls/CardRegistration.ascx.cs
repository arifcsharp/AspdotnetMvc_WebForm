using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;



using System.Data.SqlClient;
using System.Net;
using System.Net.Mail;

namespace AspDotNet_Arif.UserControls
{
    public partial class CardRegistration : System.Web.UI.UserControl
    {
        SqlConnection con = new SqlConnection(@"Data Source=(LocalDb)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\BankManagementDB.mdf;Initial Catalog=BankManagementDB;Integrated Security=True;MultipleActiveResultSets=True");
        SqlCommand cmd;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            if (chkAgree.Checked && txtName.Text != "" && txtAddress.Text != "" && txtEmail.Text != "" && txtMobileNO.Text != "" && txtMessage.Text != "")
            {
                con.Open();
                cmd = new SqlCommand("Insert into CardRegistration (Name,Address,Email,MobileNo,Message) values(@name,@address,@email,@mobileno,@message)", con);
                cmd.Parameters.AddWithValue("@name", txtName.Text);
                cmd.Parameters.AddWithValue("@address", txtAddress.Text);
                cmd.Parameters.AddWithValue("@email", txtEmail.Text);
                cmd.Parameters.AddWithValue("@mobileno", txtMobileNO.Text);
                cmd.Parameters.AddWithValue("@message", txtMessage.Text);
                cmd.ExecuteNonQuery();
                con.Close();
                rtnMessage.Text = "Your registration saved Successfully";

                //Start => Email Send 
                SendMailToAuthority();
                sendEmailToClient();
                emailSendSuccess.Text = "Email Send Successfully ";
                emailSendSuccess.Visible = true;

                //





            }
            else
            {
                rtnMessage.Text = "Read all the condition and also check the checkbox";
            }
        }


        private void sendEmailToClient()
        {
            var fromAddress = "1257095arif@gmail.com";
            const string fromPassword = "nvit-r44";
            var toAddress = txtEmail.Text;                  //Where mail will be send
            string subject = "From Card Division";

            string body = "Thank You" + " "+ txtName.Text + "for Your  interest using Master Card\n";
            body += " Your Card Collection Address \n";
          
            body += "====================Address ================" + "\n";
            body += "Address :" + " Halishahar Branch , Chattogram" + "\n";
            body += "Issue Date :" + " 30 December 2020" + "\n";
            
            body += "Please Fell Free to Call me  :" + "" + "\n";

            //SMTP Settings

            var smtp = new SmtpClient();
            smtp.Host = "smtp.gmail.com";
            smtp.Port = 587;
            smtp.EnableSsl = true;
            smtp.DeliveryMethod = SmtpDeliveryMethod.Network;
            smtp.Credentials = new NetworkCredential(fromAddress, fromPassword);
            smtp.Timeout = 20000;

            //Passing Values to SMTP Object
            smtp.Send(fromAddress, toAddress, subject, body);
        }

        protected void SendMailToAuthority()
        {
            var fromAddress = "1257095arif@gmail.com";
            const string fromPassword = "nvit-r44";
            var toAddress = "arifbd0606@gmail.com";                  //Where mail will be send
            string subject = "From Card Division";

            string body = txtName.Text + "Is Collect his/her Card.\n";
            body += "His /Her information is Like as Bellow \n";
            body += "Name :" + txtName.Text + "\n";
            body += "Address :" + txtAddress.Text + "\n";
            body += "Email :" + txtEmail.Text + "\n";
            body += "Mobile No:" + txtMobileNO.Text + "\n";
            body += "Message :" + txtMessage.Text;

            //SMTP Settings

            var smtp = new SmtpClient();
            smtp.Host = "smtp.gmail.com";
            smtp.Port = 587;
            smtp.EnableSsl = true;
            smtp.DeliveryMethod = SmtpDeliveryMethod.Network;
            smtp.Credentials = new NetworkCredential(fromAddress, fromPassword);
            smtp.Timeout = 20000;

            //Passing Values to SMTP Object
            smtp.Send(fromAddress, toAddress, subject, body);


        }
    }
}