<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="editProfile.aspx.cs" Inherits="EN.pages.editProfile" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

<div class="container">
  
  <section class="panel panel-default">

    <div class="panel-heading"> 
        <h3 class="panel-title">Profile Form</h3> 
    </div> 
        <div class="panel-body">
  
            <div class="form-group">
	            <label for="name" class="col-sm-3 control-label" runat="server" id="label4">Name: </label>
	            <div class="col-sm-9">
                    <asp:TextBox ID="TextBox1" runat="server" class="form-control"></asp:TextBox>
                    <label for="name" class="col-sm-3 control-label alert-danger" runat="server" id="label1"></label>
	            </div>
            </div> <!-- form-group // -->
            <hr />
            <br />
            <div class="form-group">
                <label for="name" class="col-sm-3 control-label" runat="server" id="label5">Email: </label>
                <div class="col-sm-9">
                    <asp:TextBox ID="TextBox2" runat="server" class="form-control"></asp:TextBox>
                    <label for="name" class="col-sm-3 control-label alert-danger" runat="server" id="label2"></label>
                </div>
            </div> <!-- form-group // -->
            <hr />
            <br />
            <div class="form-group">
                <label for="name" class="col-sm-3 control-label" runat="server" id="label6">Password: </label>
                <div class="col-sm-9">
                    <asp:TextBox ID="TextBox3" runat="server" class="form-control"></asp:TextBox>
                    <label for="name" class="col-sm-3 control-label alert-danger" runat="server" id="label3"></label>
                </div>
                
            </div> <!-- form-group // -->
           <br /><br /><br /><br />
            <div class="form-group">
                <div class="col-sm-offset-3 col-sm-9">
                    <asp:Button ID="Button1" runat="server" Text="Edit Profile" class="btn btn-primary" onclick="Button1_Click" style="margin-top: 9px" />
                </div>
            </div> <!-- form-group // -->
  
        </div><!-- panel-body // -->
    </section><!-- panel// -->

  
</div> <!-- container// -->

</asp:Content>
