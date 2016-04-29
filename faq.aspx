<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="faq.aspx.cs" Inherits="faq" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
	<title>Cell Man-FAQ</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
	    <!-- Page Content -->
    <div class="container">

        <!-- Page Heading/Breadcrumbs -->
        <div class="row">
            <div class="col-lg-12">
                <h1 class="page-header">FAQ
                </h1>
                <asp:SiteMapPath class="breadcrumb" ID="SiteMapPath1" runat="server"></asp:SiteMapPath>
            </div>
        </div>
        <!-- /.row -->

        <!-- Content Row -->
        <div class="row">
			<br />
            <div class="col-lg-12">
                <div class="panel-group" id="accordion">
                    <div class="panel panel-default">
                        <div class="panel-heading">
                            <h4 class="panel-title">
                                <a class="accordion-toggle" data-toggle="collapse" data-parent="#accordion" href="#collapseOne">Is a CellMen Certified Unlocked phone compatible with my carrier?</a>
                            </h4>
                        </div>
                        <div id="collapseOne" class="panel-collapse collapse">
                            <div class="panel-body">
                                Unlocked devices are not tied to a specific carrier or network; however, not all unlocked devices contain the technology required to work perfectly on all networks. Our unlocked phones are GSM only and will not work on networks like Sprint, Verizon, US Cellular, or MVNOs using the Sprint or Verizon network. While all unlocked devices work with AT&T, older models, such as iPhone 4S and 5, may have limited functionality if activated with T-Mobile.
                            </div>
                        </div>
                    </div>
                    <!-- /.panel -->
                    <div class="panel panel-default">
                        <div class="panel-heading">
                            <h4 class="panel-title">
                                <a class="accordion-toggle" data-toggle="collapse" data-parent="#accordion" href="#collapseTwo">Is a CellMen Certified Verizon phone compatible with my carrier?</a>
                            </h4>
                        </div>
                        <div id="collapseTwo" class="panel-collapse collapse">
                            <div class="panel-body">
                                Our CellMen Certified Verizon phones are locked to the Verizon network, meaning they can only be activated with Verizon. If you intend to use a Verizon locked device on a carrier other than Verizon, such as TracFone or Net10, we strongly recommend you first contact that carrier about the use of the specific Verizon locked device you want to purchase with their service.
                            </div>
                        </div>
                    </div>
                    <!-- /.panel -->
                    <div class="panel panel-default">
                        <div class="panel-heading">
                            <h4 class="panel-title">
                                <a class="accordion-toggle" data-toggle="collapse" data-parent="#accordion" href="#collapseThree">Is a CellMen Certified T-Mobile phone compatible with my carrier?</a>
                            </h4>
                        </div>
                        <div id="collapseThree" class="panel-collapse collapse">
                            <div class="panel-body">
                                Our CellMen Certified T-Mobile phones are locked to the T-Mobile network, meaning they can only be activated using a T-Mobile SIM card. If you intend to use a T-Mobile locked device on a carrier other than T-Mobile, such as MetroPCS or Straight Talk, we strongly recommend you first contact that carrier about the use of the specific T-Mobile locked device you want to purchase with their service.
                            </div>
                        </div>
                    </div>
                    <!-- /.panel -->
                    <div class="panel panel-default">
                        <div class="panel-heading">
                            <h4 class="panel-title">
                                <a class="accordion-toggle" data-toggle="collapse" data-parent="#accordion" href="#collapseFour">Is a CellMen Certified Sprint phone compatible with my carrier?</a>
                            </h4>
                        </div>
                        <div id="collapseFour" class="panel-collapse collapse">
                            <div class="panel-body">
                                Our CellMen Certified Sprint phones are locked to the Sprint network, meaning they can only be activated on the Sprint network. If you intend to use a Sprint locked device on a carrier other than Sprint, such as Ting or Kajeet, we strongly recommend you first contact that carrier about the use of the specific Sprint locked device you want to purchase with their service.
                            </div>
                        </div>
                    </div>
                    <!-- /.panel -->
                    <div class="panel panel-default">
                        <div class="panel-heading">
                            <h4 class="panel-title">
                                <a class="accordion-toggle" data-toggle="collapse" data-parent="#accordion" href="#collapseFive">Why can’t I trade-in and purchase in a single transaction?</a>
                            </h4>
                        </div>
                        <div id="collapseFive" class="panel-collapse collapse">
                            <div class="panel-body">
                                We launched the buy site as quickly as possible and are working to make it possible in the not-too-distant future for consumers to buy and trade in a single transaction.
                            </div>
                        </div>
                    </div>
                    <!-- /.panel -->
                    <div class="panel panel-default">
                        <div class="panel-heading">
                            <h4 class="panel-title">
                                <a class="accordion-toggle" data-toggle="collapse" data-parent="#accordion" href="#collapseSix">Do you accept money orders or checks?</a>
                            </h4>
                        </div>
                        <div id="collapseSix" class="panel-collapse collapse">
                            <div class="panel-body">
                                Because our store is strictly an e-commerce website, we are not able to accept money orders or checks.
                            </div>
                        </div>
                    </div>
                        </div>
                    </div>
                    <!-- /.panel -->
                </div>
                <!-- /.panel-group -->
            </div>
            <!-- /.col-lg-12 -->
        </div>
	</div>
	<!-- jQuery -->
    <script src="js/jquery.js"></script>

    <!-- Bootstrap Core JavaScript -->
    <script src="js/bootstrap.min.js"></script>
</asp:Content>

