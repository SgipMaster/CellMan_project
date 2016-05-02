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
		//This will reset your password and give you new one
		e.Cancel = true;
		PasswordRecovery1.SuccessText = e.Message.Body;

		//Create link so you can change you password and not have to remember the horrible cupluter generated one
		PasswordRecovery1.SuccessText += "<br /> Copy the password and Log in change your Password <a href='ChangePassword.aspx'>here.</a>";
	}
}