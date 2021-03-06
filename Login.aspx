﻿<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
	<title>Cell Man-Login</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

	   <!-- Page Content -->
    <div class="container">

        <!-- Page Heading/Breadcrumbs -->
        <div class="row">
            <div class="col-lg-12">
                <h1 class="page-header">User Login</h1>
				 <asp:SiteMapPath class="breadcrumb" ID="SiteMapPath1" runat="server"></asp:SiteMapPath>
			</div>
        </div>
        <!-- /.row -->

        <!-- Content Row -->
        <div class="row">
			<br />
            <div class="col-lg-12">
				<asp:Login ID="Login1" runat="server" CreateUserText="Need to Register?" CreateUserUrl="~/newuser.aspx" DestinationPageUrl="~/About.aspx" PasswordRecoveryText="Forgot Password?" PasswordRecoveryUrl="~/forgotpassword.aspx"></asp:Login>
			</div>
        </div>
        <!-- /.row -->


    <!-- jQuery -->
    <script src="js/jquery.js"></script>

    <!-- Bootstrap Core JavaScript -->
    <script src="js/bootstrap.min.js"></script>
	   </div>
</asp:Content>

