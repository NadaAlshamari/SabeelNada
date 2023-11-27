<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="teachers.aspx.cs" Inherits="EN.pages.teachers" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">


<style>
    
    body {
        background-image: url(https://tinypic.host/images/2023/03/20/Shapes-Abstraction-Background-2466799.jpg);
        height: 100%;
        min-height: 800px;
        background-size: cover;
        background-repeat: no-repeat;
        font-family: 'Josefin Sans', sans-serif;
        }

    .clearfix {
        display: block;
        content: "";
        clear: both;
    }
    .wrapper {
        position: relative;
        min-height: 250px;
    }
    .color1 {color:#e91e63}

    .item-container {
        border: 5px solid #fff;
        padding: 12px;
        background: #0000008a;
        transition: all .2s linear;
        border-radius: 5px;
    }
    .item-container:hover {
        background: #000000db;
        box-shadow: 1px 1px 20px -6px #1b1b1b;
    }

    .item-category a {
        float: right;
        background: #e91e63;
        padding: 4px;
        color: #fff;
    }

    .icon img {
        border-radius: 58%;
        height: 150px;
        border: 4px solid #fff;
        width: 150px;
        transition: all .2s linear;
    }
    .item-container:hover .icon img {
        width: 160px;
        height: 160px;
    }
    .sd3d {
        color: #fff;
        text-align: center;
        font-size: 11px;
        margin-top: 21px;
    }
    .sd3d a {
        color: #e91f63;
        text-align: center;
        font-size: 11px;
        margin-top: 21px;
    }
</style>

<!------ Include the above in your HEAD tag ---------->

	<div class="container-fluid bg-full p-0">
        <h1 class=" text-center pt-5 py-4 display-3 text-white">ALL <span class="color1">OUR</span> <span class="color1">Teachers</span></h1>
          <div class="row col-sm-10 text-center m-auto">
            
              <%foreach (var item in this.list){%>
              <div class="col-lg-4 item-fa example p-3">
                <div class="item-container">
                  <div class="wrapper">
                    <div class="item-title clearfix "><h1 class="text-light pt-3 "><%=item.username%></h1></div>
                    <div class="icon my-4"><img src="https://tinypic.host/images/2023/02/21/pikrepo.com-2.jpg"></div>
                    <div class="item-description text-white">
                        <a href="chat.aspx?id=<%=item.email%>" class="btn btn-success">Chat</a>
                    </div>
                  </div>
                </div>
            </div>
              <%}%>
          </div>
      </div>



</asp:Content>
