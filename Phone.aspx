<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Phone.aspx.cs" Inherits="Phone" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
	<title>Cell Man-Phones</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
	    <!-- Page Content -->
    <div class="container">

        <!-- Page Heading/Breadcrumbs -->
        <div class="row">
            <div class="col-lg-12">
                <h1 class="page-header">Phone Info<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT Image , Storage FROM Inventory JOIN Device ON Inventory.DeviceID = Device.DeviceID WHERE InventoryID = @inv">
					<SelectParameters>
						<asp:SessionParameter Name="inv" SessionField="Inventory" />
					</SelectParameters>
					</asp:SqlDataSource>
				</h1>
				<asp:SiteMapPath ID="SiteMapPath1" runat="server"></asp:SiteMapPath>
            </div>
        </div>
        <!-- /.row -->

        <!-- Portfolio Item Row -->
        <div class="row">
			<asp:DataList ID="DataList1" runat="server" DataSourceID="SqlDataSource1">
				<ItemTemplate>
					<div class="col-md-8">
						<div id="carousel-example-generic" class="carousel slide" >
							<div class="carousel-inner">
								<div class="item active">
									<asp:Image ID="Image1" CssClass="img-responsive" runat="server" ImageURL='<%# Bind("Image") %>'/>
								</div>
							 </div>
						</div>
					</div>
					<div class="col-md-4">
						<h3>Phone Description</h3>
						<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam viverra euismod odio, gravida pellentesque urna varius vitae. Sed dui lorem, adipiscing in adipiscing et, interdum nec metus. Mauris ultricies, justo eu convallis placerat, felis enim.</p>
						<h3>Phone Specifications</h3>
						<ul>
							<li>
								<asp:Label ID="Label1" runat="server" Text='<%# Bind("Storage") %>' ></asp:Label>GB
							</li>
							<li>Dolor Sit Amet</li>
							<li>Consectetur</li>
							<li>Adipiscing Elit</li>
						</ul>
					</div>
				</ItemTemplate>
			</asp:DataList>

        </div>
        <!-- /.row -->

        <!-- Related Projects Row -->
        <div class="row">

            <div class="col-lg-12">
                <h3 class="page-header">Related Projects</h3>
            </div>

            <div class="col-sm-3 col-xs-6">
                <a href="#">
                    <img class="img-responsive img-hover img-related" src="http://placehold.it/500x300" alt="" />
                </a>
            </div>

            <div class="col-sm-3 col-xs-6">
                <a href="#">
                    <img class="img-responsive img-hover img-related" src="http://placehold.it/500x300" alt="" />
                </a>
            </div>

            <div class="col-sm-3 col-xs-6">
                <a href="#">
                    <img class="img-responsive img-hover img-related" src="http://placehold.it/500x300" alt="" />
                </a>
            </div>

            <div class="col-sm-3 col-xs-6">
                <a href="#">
                    <img class="img-responsive img-hover img-related" src="http://placehold.it/500x300" alt="" />
                </a>
            </div>

        </div>
        <!-- /.row -->
    </div>
    <!-- /.container -->

    <!-- jQuery -->
    <script src="js/jquery.js"></script>

    <!-- Bootstrap Core JavaScript -->
    <script src="js/bootstrap.min.js"></script>

</asp:Content>

