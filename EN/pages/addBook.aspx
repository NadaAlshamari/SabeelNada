<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="addBook.aspx.cs" Inherits="EN.pages.addBook" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

<div class="container">
  
  <section class="panel panel-default">

    <div class="panel-heading"> 
        <h3 class="panel-title">Book Form</h3> 
    </div> 
        <div class="panel-body">
  
            <div class="form-group">
	            <label for="name" class="col-sm-3 control-label">Book Name</label>
	            <div class="col-sm-9">
                    <asp:TextBox ID="TextBox1" runat="server" class="form-control"></asp:TextBox>
	            </div>
            </div> <!-- form-group // -->
            <hr />
            <br />
            <div class="form-group">
                <label for="name" class="col-sm-3 control-label">Book Image URL</label>
                <div class="col-sm-9">
                    <asp:TextBox ID="TextBox2" runat="server" class="form-control"></asp:TextBox>
                </div>
            </div> <!-- form-group // -->
            <hr />
            <br />
            <div class="form-group">
                <label for="name" class="col-sm-3 control-label">Book Download Link</label>
                <div class="col-sm-9">
                    <asp:TextBox ID="TextBox3" runat="server" class="form-control"></asp:TextBox>
                </div>
                
            </div> <!-- form-group // -->
           <br /><br /><br /><br />
            <div class="form-group">
                <div class="col-sm-offset-3 col-sm-9">
                    <asp:Button ID="Button1" runat="server" Text="Add Book" class="btn btn-primary" onclick="Button1_Click" style="margin-top: 9px" />
                </div>
            </div> <!-- form-group // -->
  
        </div><!-- panel-body // -->
    </section><!-- panel// -->

  
</div> <!-- container// -->

</asp:Content>
