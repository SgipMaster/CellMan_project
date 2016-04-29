<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Manufacturer - Repair.aspx.cs" Inherits="Inventory" %>

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
                	<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [Name], [image] FROM [Manufacturer]"></asp:SqlDataSource>
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
						<asp:ImageButton ID="ImageButton1" runat="server" OnClick="ImageButton1_Click" Height="300px" CssClass="img-responsive img-hover" ImageUrl='<%# Bind("image") %>' AlternateText='<%# Bind("Name") %>' />
						<h3>
							<asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click" Text='<%# Bind("Name") %>'></asp:LinkButton>
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

