<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="contatcsMessages.aspx.cs" Inherits="EN.pages.contatcsMessages" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">


<div class="container">
    <h1 class="text-center" style="margin-top:5%;">All Users Messages</h1>
</div>
    <hr />
<table class="table table-striped">
  <thead>
    <tr>
      <th scope="col">#</th>
      <th scope="col">Name</th>
      <th scope="col">Email</th>
      <th scope="col">Message</th>
    </tr>
  </thead>
  <tbody>
      <%foreach (var item in this.list){%>
    <tr>
      <th scope="row"><%= item.id %></th>
      <td><%= item.name %></td>
      <td><%= item.email %></td>
      <td><%= item.message %></td>
    </tr>
      <%} %>
  </tbody>
</table>


</asp:Content>
