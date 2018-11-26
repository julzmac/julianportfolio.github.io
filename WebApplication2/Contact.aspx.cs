using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net;
using System.Net.Mail;

namespace WebApplication2
{
    public partial class Contact : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {
                MailMessage mailMessage = new MailMessage();
                mailMessage.From = new MailAddress("liljul27@gmail.com");
                mailMessage.To.Add("liljul27@gmail.com");
                mailMessage.Subject = subject.Text;

                mailMessage.Body = "<b> Sender Name : </b>" + FName.Text + " " + LName.Text + "<br/>"
                + "<b> Email address : </b>" + email.Text + "<br/>"
                + "<b> comments  : </b>" + message.Text + "<br/>";
                mailMessage.IsBodyHtml = true;

                SmtpClient smtpClient = new SmtpClient("smtp.gmail.com", 587);
                smtpClient.EnableSsl = true;
                smtpClient.Credentials = new System.Net.NetworkCredential("liljul27@gmail.com", "goodanswer27");
                smtpClient.Send(mailMessage);

                lblResult.ForeColor = System.Drawing.Color.Blue;
                lblResult.Text = "Message sent";

                email.Enabled = false;
                subject.Enabled = false;
                message.Enabled = false;
                Button1.Enabled = false;

            }


            catch
            {
                lblResult.Text = "Your message failed to send, please try again.";
            }
        }
    }
}