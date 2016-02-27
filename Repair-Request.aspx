<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Repair-Request.aspx.cs" Inherits="Repair_Request" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
      <div class="container">

			<!-- Page Heading/Breadcrumbs -->
			<div class="row">
				<div class="col-lg-12">
					<h1 class="page-header">Request Repair
					</h1>
					<asp:SiteMapPath class="breadcrumb" ID="SiteMapPath1" runat="server"></asp:SiteMapPath>
				</div>
			</div>
			<!-- /.row -->

			<!-- Content Row -->
			<div class="row">
				<div class="col-lg-12">
					<p>Please select the type of device</p>
					<asp:DropDownList ID="DropDownList1" runat="server">
						<asp:ListItem></asp:ListItem>
						<asp:ListItem>Cell Phone</asp:ListItem>
						<asp:ListItem>Tablet</asp:ListItem>
					</asp:DropDownList>
				</div>
				<!-- Will add other drop down list to get more specific repair info -->
		  </div>
      </div>
    <!-- /.container -->

    <!-- jQuery -->
    <script src="js/jquery.js"></script>

    <!-- Bootstrap Core JavaScript -->
    <script src="js/bootstrap.min.js"></script>

</asp:Content>

