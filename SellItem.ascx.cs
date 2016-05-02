using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.Configuration;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class SellItem : System.Web.UI.UserControl
{
	private string connectionString = WebConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;

	protected void Page_Load(object sender, EventArgs e)
	{

	}

	protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
	{
		//puts user selection into a session variable
		if (DropDownList1.SelectedIndex != 0)
		{
			Session["Condition"] = DropDownList1.SelectedValue.ToString();
		}
	}

	protected void Button1_Click(object sender, EventArgs e)
	{
		//check the extention
		string extention = Path.GetExtension(FileUpload1.PostedFile.FileName);

		switch (extention.ToLower())
		{
			case ".png":
			case ".jpeg":
			case ".jpg":
				break;
			default:
				Label2.Text = "This file type is not allowed.";
				return;
		}

		//Using this code, the saved file will retain its original file name when it's placed on the server
		string serverFileName = Path.GetFileName(FileUpload1.PostedFile.FileName);
		string mapPath = Server.MapPath("~/images");
		string fullUploadPath = Path.Combine(mapPath, serverFileName);

		//try to upload the file
		try
		{
			FileUpload1.PostedFile.SaveAs(fullUploadPath);
		}
		catch (Exception err)
		{
			Label2.Text = err.Message;
		}


		//insert new device into database
		if (Session["Model"].ToString() == "" || Session["BasePrice"].ToString() == "")
		{
			return;
		}

		string insertSQL;
		insertSQL = "INSERT INTO Inventory ";
		insertSQL += "VALUES (";
		insertSQL += "@DeviceID, @Condition, @CalculatedPrice,";
		insertSQL += "@AddDate, @Image) ";

		SqlConnection con = new SqlConnection(connectionString);
		SqlCommand cmd = new SqlCommand(insertSQL, con);

		cmd.Parameters.AddWithValue("@DeviceID", Session["Model"].ToString());
		cmd.Parameters.AddWithValue("@Condition", DropDownList1.SelectedItem.Text);
		cmd.Parameters.AddWithValue("@CalculatedPrice", Convert.ToDouble(Session["BasePrice"].ToString()) * 2.3);
		cmd.Parameters.AddWithValue("@AddDate", DateTime.Now);
		cmd.Parameters.AddWithValue("@Image", Path.Combine("~/images/", Path.GetFileName(FileUpload1.PostedFile.FileName)));


		int added = 0;
		try
		{
			con.Open();
			added = cmd.ExecuteNonQuery();
		}
		catch (Exception err)
		{
			
		}
		finally
		{
			if (added > 0)
			{
				con.Close();
				Response.Redirect("Default.aspx");
			}
			else
				con.Close();

		}
	}
}