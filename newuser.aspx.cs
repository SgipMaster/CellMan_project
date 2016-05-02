using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class newuser : System.Web.UI.Page
{
	protected void Page_Load(object sender, EventArgs e)
	{

	}

	protected void CreateUserWizard1_CreatedUser(object sender, EventArgs e)
	{
		//Add new user to User role
		Roles.AddUserToRole(CreateUserWizard1.UserName, "User");
	}
}