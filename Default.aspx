<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="default.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
	<title>Cell Man</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

	<!-- Header Carousel -->
    <header id="myCarousel" class="carousel slide">
        <!-- Indicators -->
        <ol class="carousel-indicators">
            <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
            <li data-target="#myCarousel" data-slide-to="1"></li>
            <li data-target="#myCarousel" data-slide-to="2"></li>
        </ol>
		<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT TOP 1 Inventory.Image, Model FROM [Inventory] JOIN Device ON Inventory.DeviceID = Device.DeviceID WHERE Condition = 'Perfect' ORDER BY AddDate DESC"></asp:SqlDataSource>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="WITH inv AS ( SELECT ROW_NUMBER() OVER (ORDER BY AddDate DESC) AS RowNumber, Inventory.Image, Model FROM Inventory JOIN Device ON Inventory.DeviceID = Device.DeviceID WHERE Condition = 'Perfect') SELECT Image, Model FROM inv WHERE RowNumber = 2 "></asp:SqlDataSource>
        <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="WITH inv AS ( SELECT ROW_NUMBER() OVER (ORDER BY AddDate DESC) AS RowNumber, Inventory.Image, Model FROM Inventory JOIN Device ON Inventory.DeviceID = Device.DeviceID WHERE Condition = 'Perfect') SELECT Image, Model FROM inv WHERE RowNumber = 3"></asp:SqlDataSource>
        <!-- Wrapper for slides -->
        <div class="carousel-inner">
            <div class="item active">
				<asp:DataList ID="DataList1" runat="server" DataSourceID="SqlDataSource1" RepeatDirection="Horizontal" RepeatLayout="Flow" >
					<ItemTemplate>
						<asp:Image ID="Image1" runat="server" Height="300px" CssClass="center-block" ImageURL='<%# Eval("Image") %>'/>
						<h2>
							<asp:Label ID="Label1" CssClass="carousel-caption" runat="server" Text='<%# Eval("Model") %>'></asp:Label>
						</h2>
					</ItemTemplate>
				</asp:DataList>
            </div>
            <div class="item">
                <asp:DataList ID="DataList2" runat="server" DataSourceID="SqlDataSource2" RepeatDirection="Horizontal" RepeatLayout="Flow" >
					<ItemTemplate>
						<asp:Image ID="Image2" runat="server" Height="300px" CssClass="center-block" ImageURL='<%# Eval("Image") %>'/>
						<h2>
							<asp:Label ID="Label2" CssClass="carousel-caption" runat="server" Text='<%# Eval("Model") %>'></asp:Label>
						</h2>
					</ItemTemplate>
				</asp:DataList>
            </div>
            <div class="item">
                <asp:DataList ID="DataList3" runat="server" DataSourceID="SqlDataSource3" RepeatDirection="Horizontal" RepeatLayout="Flow" >
					<ItemTemplate>
						<asp:Image ID="Image3" runat="server" Height="300px" CssClass="center-block" ImageURL='<%# Eval("Image") %>'/>
						<h2>
							<asp:Label ID="Label3" CssClass="carousel-caption" runat="server" Text='<%# Eval("Model") %>'></asp:Label>
						</h2>
					</ItemTemplate>
				</asp:DataList>
            </div>
        </div>

        <!-- Controls -->
        <a class="left carousel-control" href="#myCarousel" data-slide="prev">
            <span class="icon-prev"></span>
        </a>
        <a class="right carousel-control" href="#myCarousel" data-slide="next">
            <span class="icon-next"></span>
        </a>
    </header>

    <!-- Page Content -->
    <div class="container">
		<div class="row ">
            <div class="col-lg-12">
                <h2 class="page-header">Services</h2>
            </div>
            <div class="col-md-3 col-sm-6">
                <div class="panel panel-default text-center">
                    <div class="panel-heading">
                        <span class="fa-stack fa-5x">
                              <i class="fa fa-circle fa-stack-2x text-primary"></i>
                              <i class="fa fa-tree fa-stack-1x fa-inverse"></i>
                        </span>
                    </div>
                    <div class="panel-body">
                        <h4>Buy Phones</h4>
                        <p>In need of a new phone? Check out our Inventory!</p>
                        <a href="Type.aspx" class="btn btn-primary">Learn More</a>
                    </div>
                </div>
            </div>
            <div class="col-md-3 col-sm-6">
                <div class="panel panel-default text-center">
                    <div class="panel-heading">
                        <span class="fa-stack fa-5x">
                              <i class="fa fa-circle fa-stack-2x text-primary"></i>
                              <i class="fa fa-car fa-stack-1x fa-inverse"></i>
                        </span>
                    </div>
                    <div class="panel-body">
                        <h4>Sell Phones</h4>
                        <p>Ready for something new and exciting? Sell us your old phone!</p>
                        <a href="Type - Sell.aspx" class="btn btn-primary">Learn More</a>
                    </div>
                </div>
            </div>
            <div class="col-md-3 col-sm-6">
                <div class="panel panel-default text-center">
                    <div class="panel-heading">
                        <span class="fa-stack fa-5x">
                              <i class="fa fa-circle fa-stack-2x text-primary"></i>
                              <i class="fa fa-database fa-stack-1x fa-inverse"></i>
                        </span>
                    </div>
                    <div class="panel-body">
                        <h4>Buy Parts</h4>
                        <p>Feeling up for the job? Buy parts and fix it yourself!</p>
                        <a href="Type - Repair.aspx" class="btn btn-primary">Learn More</a>
                    </div>
                </div>
            </div>
        </div>
	</div>

    <!-- jQuery -->
    <script src="js/jquery.js"></script>

    <!-- Bootstrap Core JavaScript -->
    <script src="js/bootstrap.min.js"></script>

    <!-- Script to Activate the Carousel -->
    <script>
		$('.carousel').carousel({
			interval: 5000 //changes the speed
		})
    </script>
</asp:Content>