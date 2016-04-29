<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="about.aspx.cs" Inherits="About" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
	<title>Cell Man-About</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
	
    <!-- Page Content -->
    <div class="container">

        <!-- Page Heading/Breadcrumbs -->
        <div class="row">
            <div class="col-lg-12">
                <h1 class="page-header">About
                </h1>
				<asp:SiteMapPath Class="breadcrumb" ID="SiteMapPath1" runat="server"></asp:SiteMapPath>
            </div>
        </div>
        <!-- /.row -->

        <!-- Intro Content -->
        <div class="row">
			<br />	
            <div class="col-md-6">
                <img class="img-responsive" src="images/aboutus.jpg" alt="">
            </div>
            <div class="col-md-6">
                <h2>About Cell Men</h2>
                <p>CellMen is the leading e-commerce company that buys and sells pre-owned consumer electronics. We pay cash for used smartphones, tablets, laptops and desktops. We then inspect, certify them and sell them to consumers looking for a cost effective way to stay connected. CellMen is simple, it's green, and it works for everyone. How did we get here?</p>
                <p>The CellMen story began with the realization that if you can trade in a used car why can’t you trade in a used phone. A new business, and a new way to reuse consumer electronics, was born.</p>
            </div>
        </div>
        <!-- /.row -->

        <!-- Team Members -->
        <div class="row">
            <div class="col-lg-12">
                <h2 class="page-header">Our Team</h2>
            </div>
            <div class="col-md-4 text-center">
                <div class="thumbnail">
                    <img class="img-responsive" src="images/nathan.jpg" alt="">
                    <div class="caption">
                        <h3>Nathan Silvester<br>
                            <small>Web Developer</small>
                        </h3>
                        <p>Can do anything!</p>
                        <ul class="list-inline">
                            <li><a href="#"><i class="fa fa-2x fa-facebook-square"></i></a>
                            </li>
                            <li><a href="#"><i class="fa fa-2x fa-linkedin-square"></i></a>
                            </li>
                            <li><a href="#"><i class="fa fa-2x fa-twitter-square"></i></a>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
            <div class="col-md-4 text-center">
                <div class="thumbnail">
                    <img class="img-responsive" src="images/richard.jpg" alt="">
                    <div class="caption">
                        <h3>Richard Olivera<br>
                            <small>Web Developer</small>
                        </h3>
                        <p>Can do some things!</p>
                        <ul class="list-inline">
                            <li><a href="#"><i class="fa fa-2x fa-facebook-square"></i></a>
                            </li>
                            <li><a href="#"><i class="fa fa-2x fa-linkedin-square"></i></a>
                            </li>
                            <li><a href="#"><i class="fa fa-2x fa-twitter-square"></i></a>
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

