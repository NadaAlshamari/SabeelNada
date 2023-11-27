<%@ Page Title="Log in" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="EN.Account.Login" Async="true" %>

<%@ Register Src="~/Account/OpenAuthProviders.ascx" TagPrefix="uc" TagName="OpenAuthProviders" %>

<%@ Register src="ucLogin.ascx" tagname="ucLogin" tagprefix="uc1" %>

<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">


    
    <uc1:ucLogin ID="ucLogin1" runat="server" />


    
</asp:Content>
