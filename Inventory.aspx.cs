﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Inventory : System.Web.UI.Page
{
	protected void Page_Load(object sender, EventArgs e)
	{

	}

	protected void LinkButton1_Click(object sender, EventArgs e)
	{
		

	}

	protected void ImageButton1_Click(object sender, EventArgs e)
	{
		ImageButton clicked = sender as ImageButton;
		Session["Inventory"] = clicked.AlternateText;
		Response.Redirect("Phone.aspx");
	}

}

