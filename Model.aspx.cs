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
		//Creates session variable to store user selection
		LinkButton clicked = sender as LinkButton;
		Session["Model"] = clicked.Text;
		Response.Redirect("Inventory.aspx");
	}

	protected void ImageButton1_Click(object sender, EventArgs e)
	{
		//Creates session variable to store user selection
		ImageButton clicked = sender as ImageButton;
		Session["Model"] = clicked.AlternateText;
		Response.Redirect("Inventory.aspx");
	}
}

