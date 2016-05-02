<%@ Control Language="C#" AutoEventWireup="true" CodeFile="SellItem.ascx.cs" Inherits="SellItem" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajaxToolkit" %>

<asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
<asp:DropDownList ID="DropDownList1" runat="server" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
	<asp:ListItem Selected="True" Value="0">Select Condition</asp:ListItem>
	<asp:ListItem Value="1">Poor</asp:ListItem>
	<asp:ListItem Value="2">Fair</asp:ListItem>
	<asp:ListItem Value="3">Perfect</asp:ListItem>
</asp:DropDownList>
<asp:RequiredFieldValidator ID="RequiredFieldValidator1" Display="Dynamic" ForeColor="Red" ControlToValidate="DropDownList1" runat="server" Text="*" ErrorMessage="Please Select a Condition." InitialValue="0"></asp:RequiredFieldValidator>
<br />
<br />
<asp:FileUpload ID="FileUpload1" runat="server" />
<asp:RequiredFieldValidator ID="RequiredFieldValidator2" ControlToValidate="FileUpload1" runat="server" ForeColor="Red" Text="*" ErrorMessage="Please Select an Image."></asp:RequiredFieldValidator>
<br />		
<asp:Button ID="Button1" runat="server" CssClass="btn btn-primary" Text="Sell" OnClick="Button1_Click" />
<ajaxToolkit:ConfirmButtonExtender ID="ConfirmButtonExtender1" TargetControlID="Button1" runat="server" ConfirmText="Are you sure you want to Sell this phone?" />
<br />
<asp:Label ID="Label2" runat="server" ></asp:Label>
<asp:ValidationSummary ID="ValidationSummary1" runat="server" ShowMessageBox="true" ShowSummary="false" ForeColor="Red" />