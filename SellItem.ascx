<%@ Control Language="C#" AutoEventWireup="true" CodeFile="SellItem.ascx.cs" Inherits="SellItem" %>

<asp:DropDownList ID="DropDownList1" runat="server" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
	<asp:ListItem Value="Condition">Select Condition</asp:ListItem>
	<asp:ListItem Value="Poor">Poor</asp:ListItem>
	<asp:ListItem Value="Fair">Fair</asp:ListItem>
	<asp:ListItem Value="Perfect">Perfect</asp:ListItem>
</asp:DropDownList>
<asp:RequiredFieldValidator ID="RequiredFieldValidator1" Display="Dynamic" ControlToValidate="DropDownList1" runat="server" Text="*" ErrorMessage="Please Select a Condition" ValidationGroup="Sell" InitialValue="Condition"></asp:RequiredFieldValidator>
<br />
<br />
<asp:FileUpload ID="FileUpload1" runat="server" />
<br />		
<asp:Button ID="Button1" runat="server" CssClass="btn btn-primary" Text="Sell" OnClick="Button1_Click" />
<br />
<asp:Label ID="Label2" runat="server" ></asp:Label>
<asp:ValidationSummary ID="ValidationSummary1" runat="server" ValidationGroup="Sell" />