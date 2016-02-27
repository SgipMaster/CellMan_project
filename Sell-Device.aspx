<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Sell-Device.aspx.cs" Inherits="pricing" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <!-- Page Content -->
    <div class="container">

        <!-- Page Heading/Breadcrumbs -->
        <div class="row">
            <div class="col-lg-12">
                <h1 class="page-header">Sell
                    <small>Device Condition</small>
                </h1>
                <asp:SiteMapPath class="breadcrumb" ID="SiteMapPath1" runat="server"></asp:SiteMapPath>
            </div>
        </div>
        <!-- /.row -->

        <!-- Content Row -->
        <div class="row">
            <div class="col-md-4">
                <div class="panel panel-default text-center">
                    <div class="panel-heading">
                        <h3 class="panel-title">Broken</h3>
                    </div>
                    <div class="panel-body">
                        <span class="price"><sup>$</sup>19<sup>99</sup></span>
                        <span class="period">on average</span>
                    </div>
                    <ul class="list-group">
                        <li class="list-group-item"><strong>1</strong> User</li>
                        <li class="list-group-item"><strong>5</strong> Projects</li>
                        <li class="list-group-item"><strong>Unlimited</strong> Email Accounts</li>
                        <li class="list-group-item"><strong>10GB</strong> Disk Space</li>
                        <li class="list-group-item"><strong>100GB</strong> Monthly Bandwidth</li>
                        <li class="list-group-item"><asp:Button ID="Button1" class="btn btn-primary" runat="server" Text="Sell" />
                        </li>
                    </ul>
                </div>
            </div>
            <div class="col-md-4">
                <div class="panel panel-primary text-center">
                    <div class="panel-heading">
                        <h3 class="panel-title">Fair <span class="label label-success">Most</span></h3>
                    </div>
                    <div class="panel-body">
                        <span class="price"><sup>$</sup>39<sup>99</sup></span>
                        <span class="period">on average</span>
                    </div>
                    <ul class="list-group">
                        <li class="list-group-item"><strong>10</strong> User</li>
                        <li class="list-group-item"><strong>500</strong> Projects</li>
                        <li class="list-group-item"><strong>Unlimited</strong> Email Accounts</li>
                        <li class="list-group-item"><strong>1000GB</strong> Disk Space</li>
                        <li class="list-group-item"><strong>10000GB</strong> Monthly Bandwidth</li>
                        <li class="list-group-item"><asp:Button ID="Button2" class="btn btn-primary" runat="server" Text="Sell" />
                        </li>
                    </ul>
                </div>
            </div>
            <div class="col-md-4">
                <div class="panel panel-default text-center">
                    <div class="panel-heading">
                        <h3 class="panel-title">Excellent</h3>
                    </div>
                    <div class="panel-body">
                        <span class="price"><sup>$</sup>159<sup>99</sup></span>
                        <span class="period">on average</span>
                    </div>
                    <ul class="list-group">
                        <li class="list-group-item"><strong>Unlimted</strong> Users</li>
                        <li class="list-group-item"><strong>Unlimited</strong> Projects</li>
                        <li class="list-group-item"><strong>Unlimited</strong> Email Accounts</li>
                        <li class="list-group-item"><strong>10000GB</strong> Disk Space</li>
                        <li class="list-group-item"><strong>Unlimited</strong> Monthly Bandwidth</li>
                        <li class="list-group-item"><asp:Button ID="Button3" class="btn btn-primary" runat="server" Text="Sell" />
                        </li>
                    </ul>
                </div>
            </div>
        </div>

    </div>
    <!-- /.container -->

    <!-- jQuery -->
    <script src="js/jquery.js"></script>

    <!-- Bootstrap Core JavaScript -->
    <script src="js/bootstrap.min.js"></script>
</asp:Content>

