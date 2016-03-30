<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Manufacturer.aspx.cs" Inherits="Inventory" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
	<title>Cell Man-Inventory</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
	<!-- Page Content -->
    <div class="container">

        <!-- Page Heading/Breadcrumbs -->
        <div class="row">
            <div class="col-lg-12">
                <h1 class="page-header">Manufacturer
                	<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [Name] FROM [Manufacturer]"></asp:SqlDataSource>
                </h1>
                <asp:SiteMapPath class="breadcrumb" ID="SiteMapPath1" runat="server"></asp:SiteMapPath>
            </div>
        </div>
        <!-- /.row -->
		
		<!-- LinkButtons will forward to Phone.aspx -->
        <!-- Projects Row -->
        <div class="row">
			<br />
			<asp:DataList ID="DataList1" runat="server" DataSourceID="SqlDataSource1" RepeatColumns="3" RepeatLayout="Flow">
				<ItemTemplate>
					<div class="col-md-4 img-portfolio">
						<img class="img-responsive img-hover" src="http://placehold.it/700x400" alt="" />
						<h3>
							<asp:LinkButton ID="LinkButton1" runat="server" Text='<%# Bind("Name") %>'></asp:LinkButton>
							<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam viverra euismod odio, gravida pellentesque urna varius vitae.</p>
						</h3>
					</div>
				</ItemTemplate>
			</asp:DataList>

		</div>
        <!-- /.row -->

        <!-- /.row -->

        <hr />

        <!-- Pagination -->

    </div>
    <!-- jQuery -->
    <script src="js/jquery.js"></script>

    <!-- Bootstrap Core JavaScript -->
    <script src="js/bootstrap.min.js"></script>
</asp:Content>

