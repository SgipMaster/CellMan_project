<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="newuser.aspx.cs" Inherits="newuser" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
	<title>Create User</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
		
	   <!-- Page Content -->
    <div class="container">

        <!-- Page Heading/Breadcrumbs -->
        <div class="row">
            <div class="col-lg-12">
                <h1 class="page-header">Create User</h1>
				 <asp:SiteMapPath class="breadcrumb" ID="SiteMapPath1" runat="server"></asp:SiteMapPath>
			</div>
        </div>
        <!-- /.row -->
		<br />
		<asp:CreateUserWizard ID="CreateUserWizard1" runat="server" OnCreatedUser="CreateUserWizard1_CreatedUser">
			<WizardSteps>
				<asp:CreateUserWizardStep ID="CreateUserWizardStep1" runat="server">
				</asp:CreateUserWizardStep>
				<asp:CompleteWizardStep ID="CompleteWizardStep1" runat="server">
				</asp:CompleteWizardStep>
			</WizardSteps>
		</asp:CreateUserWizard>
	</div>
</asp:Content>

