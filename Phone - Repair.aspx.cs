using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.Configuration;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Phone : System.Web.UI.Page
{
	protected void Page_Load(object sender, EventArgs e)
	{

    }

    protected void CheckBoxList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        List<ListItem> Selected = new List<ListItem>();
        double count = 0;
        foreach (ListItem item in CheckBoxList1.Items)
            if (item.Selected)
                Selected.Add(item);
        foreach (ListItem item in Selected)
            count += Convert.ToDouble(item.Value);
        Label2.Text = "Total Cost $"+count + " Please call 1-800-CellMan to order your parts";
    }
}