<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="adminElibrary.aspx.cs" Inherits="EN.pages.adminElibrary" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">


    <style>
    .bookshelf {
      width: 900px;
      margin: 5rem auto;
      text-align: center;
      position: relative;
    }

    .book-grid {
      z-index: 2;
      position: relative;
      transform: translateY(-15px);
    }
    .book-grid ul {
      list-style: none;
      padding: 0;
      margin: 0;
      display: grid;
      grid-template-columns: repeat(3, 1fr);
    }
    .book-grid ul li {
      justify-self: center;
    }
    .book-grid ul img {
      display: block;
      box-shadow: 0px -5px 20px 2px rgba(0, 0, 0, 0.3);
      width: 200px;
      height: 300px;
      -o-object-fit: cover;
         object-fit: cover;
    }

    .shelf-shadows {
      position: absolute;
      bottom: 0;
      left: 0;
      width: 100%;
      height: 1rem;
      border-radius: 2px;
      z-index: 1;
      box-shadow: 0px -5px 3px 0px rgba(170, 170, 170, 0.2), 0px 15px 20px 0px rgba(170, 170, 170, 0.7), 0px 5px 5px 0px rgba(119, 119, 119, 0.3);
    }

    .shelf {
      position: absolute;
      bottom: 0;
      left: 0;
      width: 100%;
      height: 1rem;
      background-color: #f9f9f9;
      border-radius: 2px;
      z-index: 3;
    }
</style>
    
    
  
<div class="bookshelf">
  <div class="book-grid">
    <ul>
        <%foreach (var item in this.list){%>
      <li> 
          <h5 class="btn btn-primary btn-block"><%=item.name%></h5>
          <img src="<%=item.book_url%>"/>
          <a href="delete.aspx?id=<%=item.id%>&type=b" target="_blank" class="btn btn-danger btn-block">Delete</a>

      </li>
        <%}%>
    </ul>
  </div>
  <div class="shelf-shadows"></div>
  <div class="shelf"></div>
</div>


</asp:Content>
