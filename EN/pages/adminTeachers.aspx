<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="adminTeachers.aspx.cs" Inherits="EN.pages.adminTeachers" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

<table class="table table-striped">
  <thead>
    <tr>
      <th scope="col">#</th>
      <th scope="col">First</th>
      <th scope="col">Last</th>
      <th scope="col">Teacher CV</th>
      <th scope="col">Handle</th>
    </tr>
  </thead>
  <tbody>
      <%foreach (var item in this.list){%>
    <tr>
      <th scope="row"><%= item.id %></th>
      <td><%= item.username %></td>
      <td><%= item.email %></td>
      <td><a href='../Content/CV/<%= item.email %>/<%= item.cv %>' class="btn btn-success">Download CV</a></td>
      <td>
          <a href="delete.aspx?id=<%=item.id %>&type=t" class="btn btn-danger">Delete</a>
      </td>
    </tr>
      <%} %>
  </tbody>
</table>

</asp:Content>
