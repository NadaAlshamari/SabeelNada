<%@ Page Title="Register" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="EN.Account.Register" %>

<%@ Register src="usSignup.ascx" tagname="usSignup" tagprefix="uc1" %>

<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">


    
    <uc1:usSignup ID="usSignup1" runat="server" />


    
</asp:Content>
