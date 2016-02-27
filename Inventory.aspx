<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="inventory.aspx.cs" Inherits="Inventory" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
	<title>Cell Man-Inventory</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
	<!-- Page Content -->
    <div class="container">

        <!-- Page Heading/Breadcrumbs -->
        <div class="row">
            <div class="col-lg-12">
                <h1 class="page-header">Inventory
                </h1>
                <asp:SiteMapPath class="breadcrumb" ID="SiteMapPath1" runat="server"></asp:SiteMapPath>
            </div>
        </div>
        <!-- /.row -->
		
		<!-- LinkButtons will forward to Phone.aspx -->
        <!-- Projects Row -->
        <div class="row">
            <div class="col-md-4 img-portfolio">
				<asp:LinkButton ID="LinkButton10" runat="server">
                    <img class="img-responsive img-hover" src="http://placehold.it/700x400" alt="" />
                </asp:LinkButton>
                <h3>
					<asp:LinkButton ID="LinkButton1" runat="server">Phone Name</asp:LinkButton>
                </h3>
                <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam viverra euismod odio, gravida pellentesque urna varius vitae.</p>
            </div>
            <div class="col-md-4 img-portfolio">
				<asp:LinkButton ID="LinkButton11" runat="server">
                    <img class="img-responsive img-hover" src="http://placehold.it/700x400" alt="" />
                </asp:LinkButton>
				<h3>
                    <asp:LinkButton ID="LinkButton2" runat="server">Phone Name</asp:LinkButton>
                </h3>
                <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam viverra euismod odio, gravida pellentesque urna varius vitae.</p>
            </div>
            <div class="col-md-4 img-portfolio">
 				<asp:LinkButton ID="LinkButton12" runat="server">
                    <img class="img-responsive img-hover" src="http://placehold.it/700x400" alt="" />
                </asp:LinkButton>               
				<h3>
                    <asp:LinkButton ID="LinkButton3" runat="server">Phone Name</asp:LinkButton>
                </h3>
                <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam viverra euismod odio, gravida pellentesque urna varius vitae.</p>
            </div>
        </div>
        <!-- /.row -->

        <!-- Projects Row -->
        <div class="row">
            <div class="col-md-4 img-portfolio">
				<asp:LinkButton ID="LinkButton13" runat="server">
                    <img class="img-responsive img-hover" src="http://placehold.it/700x400" alt="" />
                </asp:LinkButton>
                <h3>
                    <asp:LinkButton ID="LinkButton4" runat="server">Phone Name</asp:LinkButton>
                </h3>
                <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam viverra euismod odio, gravida pellentesque urna varius vitae.</p>
            </div>
            <div class="col-md-4 img-portfolio">
				<asp:LinkButton ID="LinkButton14" runat="server">
                    <img class="img-responsive img-hover" src="http://placehold.it/700x400" alt="" />
                </asp:LinkButton>
                <h3>
                    <asp:LinkButton ID="LinkButton5" runat="server">Phone Name</asp:LinkButton>
                </h3>
                <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam viverra euismod odio, gravida pellentesque urna varius vitae.</p>
            </div>
            <div class="col-md-4 img-portfolio">
				<asp:LinkButton ID="LinkButton15" runat="server">
                    <img class="img-responsive img-hover" src="http://placehold.it/700x400" alt="" />
                </asp:LinkButton>
                <h3>
                    <asp:LinkButton ID="LinkButton6" runat="server">Phone Name</asp:LinkButton>
                </h3>
                <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam viverra euismod odio, gravida pellentesque urna varius vitae.</p>
            </div>
        </div>

        <!-- Projects Row -->
        <div class="row">
            <div class="col-md-4 img-portfolio">
				<asp:LinkButton ID="LinkButton16" runat="server">
                    <img class="img-responsive img-hover" src="http://placehold.it/700x400" alt="" />
                </asp:LinkButton>
                <h3>
                    <asp:LinkButton ID="LinkButton7" runat="server">Phone Name</asp:LinkButton>
                </h3>
                <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam viverra euismod odio, gravida pellentesque urna varius vitae.</p>
            </div>
            <div class="col-md-4 img-portfolio">
				<asp:LinkButton ID="LinkButton17" runat="server">
                    <img class="img-responsive img-hover" src="http://placehold.it/700x400" alt="" />
                </asp:LinkButton>
                <h3>
                    <asp:LinkButton ID="LinkButton8" runat="server">Phone Name</asp:LinkButton>
                </h3>
                <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam viverra euismod odio, gravida pellentesque urna varius vitae.</p>
            </div>
            <div class="col-md-4 img-portfolio">
				<asp:LinkButton ID="LinkButton18" runat="server">
                    <img class="img-responsive img-hover" src="http://placehold.it/700x400" alt="" />
                </asp:LinkButton>
                <h3>
                    <asp:LinkButton ID="LinkButton9" runat="server">Phone Name</asp:LinkButton>
                </h3>
                <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam viverra euismod odio, gravida pellentesque urna varius vitae.</p>
            </div>
        </div>
        <!-- /.row -->

        <hr>

        <!-- Pagination -->
        <div class="row text-center">
            <div class="col-lg-12">
                <ul class="pagination">
                    <li>
                        <a href="#">&laquo;</a>
                    </li>
                    <li class="active">
                        <a href="#">1</a>
                    </li>
                    <li>
                        <a href="#">2</a>
                    </li>
                    <li>
                        <a href="#">3</a>
                    </li>
                    <li>
                        <a href="#">4</a>
                    </li>
                    <li>
                        <a href="#">5</a>
                    </li>
                    <li>
                        <a href="#">&raquo;</a>
                    </li>
                </ul>
            </div>
        </div>
    </div>
    <!-- jQuery -->
    <script src="js/jquery.js"></script>

    <!-- Bootstrap Core JavaScript -->
    <script src="js/bootstrap.min.js"></script>
</asp:Content>

