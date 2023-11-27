<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="chat.aspx.cs" Inherits="EN.pages.chat" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">


<style>
    *, *:before, *:after {
	box-sizing: border-box;
}
* {
	margin: 0;
	padding: 0;
}
body>div {
	max-width: 800px;
	margin: auto;
}
.msg {
	display: grid;
	margin: 20px;
	grid-template-columns: repeat(5, 1fr);
	grid-template-rows: repeat(1, 1fr);
}
.content {
	padding: 30px;
}
.recepient {
	grid-area: 1 / 1 / 2 / 2;
	display: grid;
	grid-template-columns: repeat(2, 1fr);
	grid-template-rows: auto auto;
}
.recepient .icon {
	grid-area: 1 / 2 / 3 / 3;
	padding: 5px;
	align-self: center;
}
.recepient .name {
	grid-area: 1 / 1 / 2 / 2;
	align-self: end;
	font-weight: bold;
	text-align: right;
}
.recepient .time {
	grid-area: 2 / 1 / 3 / 2;
	align-self: start;
	color: gray;
	text-align: right;
}
.sender {
	grid-area: 1 / 5 / 2 / 6;
	display: grid;
	grid-template-columns: repeat(2, 1fr);
	grid-template-rows: auto auto;
}
.sender .icon {
	grid-area: 1 / 1 / 3 / 2;
	padding: 5px;
	align-self: center;
}
.sender .name {
	grid-area: 1 / 2 / 2 / 3;
	font-weight: bold;
	align-self: end;
}
.sender .time {
	grid-area: 2 / 2 / 3 / 3;
	color: gray;
	align-self: start;
}
.msg_from .content {
	grid-area: 1 / 2 / 2 / 5;
	background: #DDA0DD;
	border-radius: 20px 20px 20px 0;
	text-align: left;
	align-self: center;
}
.msg_to .content {
	grid-area: 1 / 2 / 2 / 5;
	background: #AFEEEE;
	border-radius: 20px 20px 0 20px;
	text-align: right;
	align-self: center;
}
img {
	width: 100%;
}

</style>

<div>
    <%foreach (var item in this.list){%>
    <%if(item.from_student==0){ %>
  <div class="msg msg_to">
    <div class="content"><%= item.message %></div>
    <div class="sender"><span class="icon"><img src="https://i.postimg.cc/MnSTVw83/me.png"></span><span class="time">2 days ago</span></div>
  </div>
    <%} %>
    <%if(item.from_student==1){ %>
  <div class="msg msg_from">
    <div class="recepient"><span class="icon"><img src="https://i.postimg.cc/PCQqM7XX/she.png"></span><span class="time">1 day ago</span></div>
    <div class="content"><%= item.message %></div>
  </div>
    <% } %>
    <% } %>

</div>
    
<div style="text-align:center;display:inline-flex;width:100%;">
    <asp:TextBox ID="TextBox1" runat="server" class="form-control" style="max-width: 80%;margin-left: 8%;"></asp:TextBox>
    <asp:Button ID="Button1" runat="server" class="btn btn-success btn-sm" OnClick="Button1_Click" Text="Send" />
</div>

</asp:Content>
