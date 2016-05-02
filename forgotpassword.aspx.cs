using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class forgotpassword : System.Web.UI.Page
{
	protected void Page_Load(object sender, EventArgs e)
	{

	}

	protected void PasswordRecovery1_SendingMail(object sender, MailMessageEventArgs e)
	{
		e.Cancel = true;
		PasswordRecovery1.SuccessText = e.Message.Body;
		PasswordRecovery1.SuccessText += "<br /> Copy the password and Log in change your Password <a href='ChangePassword.aspx'>here.</a>";
	}
}