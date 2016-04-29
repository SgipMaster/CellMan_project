using System;
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
		LinkButton clicked = sender as LinkButton;
		Session["Manufacturer"] = clicked.Text;
		Response.Redirect("Model - Repair.aspx");
	}

	protected void ImageButton1_Click(object sender, EventArgs e)
	{
		ImageButton clicked = sender as ImageButton;
		Session["Manufacturer"] = clicked.AlternateText;
		Response.Redirect("Model - Repair.aspx");
	}
}

