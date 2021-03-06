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
		//Creates session variables to store user selection
		LinkButton clicked = sender as LinkButton;
		Session["Model"] = clicked.ToolTip.ToString();
		Session["BasePrice"] = clicked.ValidationGroup;
		Response.Redirect("Phone - Sell.aspx");
	}

	protected void ImageButton1_Click(object sender, EventArgs e)
	{
		//Creates session variables to store user selection
		ImageButton clicked = sender as ImageButton;
		Session["Model"] = clicked.AlternateText;
		Session["BasePrice"] = clicked.ToolTip.ToString();
		Response.Redirect("Phone - Sell.aspx");
	}
}

