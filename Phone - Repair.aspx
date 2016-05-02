<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Phone - Repair.aspx.cs" Inherits="Phone" MaintainScrollPositionOnPostback="true" %>

<%@ Register Src="~/SellItem.ascx" TagPrefix="uc1" TagName="SellItem" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <title>Cell Man-Phones</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
        <!-- Page Content -->
    <div class="container">

        <!-- Page Heading/Breadcrumbs -->
        <div class="row">
            <div class="col-lg-12">
                <h1 class="page-header">Phone Info
					<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT Image, Storage FROM Device WHERE Device.DeviceID = @mod" InsertCommand="INSERT INTO [Inventory] ([DeviceID], [Conditionl], [CalculatedPrice], [AddDate], [Image]) VALUES (@DeviceID, @Condition, @CalculatedPrice, @AddDate, @image)">
					    <InsertParameters>
                            <asp:Parameter Name="DeviceID" />
                            <asp:Parameter Name="Condition" />
                            <asp:Parameter Name="CalculatedPrice" />
                            <asp:Parameter Name="AddDate" />
                            <asp:Parameter Name="image" Type="String" />
                        </InsertParameters>
                        <SelectParameters>
                            <asp:SessionParameter Name="mod" SessionField="Model" />
                        </SelectParameters>
					</asp:SqlDataSource>
				    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT PartName, Price FROM Parts WHERE DeviceID = @mod">
                        <SelectParameters>
                            <asp:SessionParameter Name="mod" SessionField="Model" />
                        </SelectParameters>
                    </asp:SqlDataSource>
				</h1>
				<asp:SiteMapPath CssClass="breadcrumb" ID="SiteMapPath1" runat="server"></asp:SiteMapPath>
            </div>
        </div>
        <!-- /.row -->

        <!-- Portfolio Item Row -->
        <div class="row">
			<br />
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
								<asp:Label ID="Label1" runat="server" Text='<%# Bind("Storage", "{0} GB" ) %>' ></asp:Label>
							</li>
						</ul>
					</div>
				</ItemTemplate>
			</asp:DataList>
			<asp:CheckBoxList ID="CheckBoxList1" runat="server" DataSourceID="SqlDataSource2" DataTextField="PartName" DataValueField="Price" AutoPostBack="True" OnSelectedIndexChanged="CheckBoxList1_SelectedIndexChanged" >
            </asp:CheckBoxList>
            <asp:Label ID="Label2" runat="server" Text="Total Cost $0"></asp:Label>
			<br />
        </div>
        <!-- /.row -->

    </div>
    <!-- /.container -->

    <!-- jQuery -->
    <script src="js/jquery.js"></script>

    <!-- Bootstrap Core JavaScript -->
    <script src="js/bootstrap.min.js"></script>

</asp:Content>

