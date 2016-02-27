<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Repair-Track.aspx.cs" Inherits="Repair_Track" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
      <div class="container">

        <!-- Page Heading/Breadcrumbs -->
        <div class="row">
            <div class="col-lg-12">
                <h1 class="page-header">Track Repairs</h1>
                <asp:SiteMapPath class="breadcrumb" ID="SiteMapPath1" runat="server"></asp:SiteMapPath>
            </div>
        </div>
        <!-- /.row -->

        <!-- Content Row -->
        <div class="row">
            <div class="col-lg-12">
                <p>Please enter invoice number</p>
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
				<asp:Button ID="Button1" runat="server" Text="Submit" />
            </div>
		</div>
	</div>
    <!-- jQuery -->
    <script src="js/jquery.js"></script>

    <!-- Bootstrap Core JavaScript -->
    <script src="js/bootstrap.min.js"></script>
      
      
</asp:Content>

