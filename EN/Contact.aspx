﻿<%@ Page Title="Contact" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="EN.Contact" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

<style>
    section {
        margin-top: 50px;
        margin-bottom: 50px;
    }


    section.contact-us #contact {
        position: relative;
        display: block;
        width: 380px;
        height: auto;
        background-color: #fff;
        padding: 40px;
        margin-left: auto;
        margin-right: auto;
        border-radius: 15px;
        box-shadow: 0px 0px 15px rgba(0, 0, 0, 0.05);
    }

    section.contact-us .section-heading {
        position: relative;
        display: block;
        margin: auto;
    }

    .section-heading h4 {
        line-height: 40px;
        font-size: 28px;
        font-weight: 900;
        color: #87d1ee;
        text-align: center;
        text-transform: uppercase;
        margin-bottom: 40px;
    }

    input, textarea {
        width: 350px;
        position: relative;
        display: block;
        background-color: #f4f7fb;
        font-family: 'Open Sans', sans-serif;
        font-size: 12px;
        font-weight: 500;
        border: none;
        box-shadow: none;
        border-radius: 5px;
        outline-color: #9e9e9e;
    }

    input {
        height: 40px;
        padding: 0px 15px;
    }

    textarea {
        min-height: 140px;
        max-height: 180px;
        padding: 15px;
        resize: none;
    }

    .contact-us span {
        height: 20px;
        font-size: 12px;
        margin-bottom: 20px;
    }

    .valid_info_name, .valid_info_email, .valid_info_message {
        display: inline-block;
        font-size: 13px;
        margin: 5px 2px;
    }

    .valid {
        border: 2px solid green;
        outline-color: green;
    }

    .invalid {
        border: 2px solid red;
        outline-color: red;
    }

    .btn {
        display: inline-flex;
        width: 100%;
        justify-content: flex-end;
    }

    #form-submit {
        position: relative;
        display: inline-block;
        float: right;
        font-size: 12px;
        font-weight: bold;
        letter-spacing: 1px;
        text-transform: uppercase;
        color: #fff;
        background: rgb(219,138,222);
        background: linear-gradient(-145deg, rgba(219,138,222,1) 0%, rgba(246,191,159,1) 100%);
        padding: 12px 20px;
        border-radius: 5px;
        border: none;
        outline: none;
        cursor: pointer;
        transition: all .3s;
        transition: all .3s;
    }

    #form-submit:disabled {
        border: 1px solid #9e9e9e;
        background: transparent;
        color: #9e9e9e;
        transition: none;
        transform: none;
        cursor: default;
    }

    #form-submit:hover:disabled {
        border: 1px solid #9e9e9e;
        color: #9e9e9e;
        background: transparent;
        transition: none;
        transform: none;
        cursor: default;
    }

    button:active {
        transform: scale(0.95);
    }

    button:focus {
        outline: none;
    }

    button.ghost {
        background-color: transparent;
        border-color: #FFFFFF;
    }
</style>

    <section class="contact-us" id="contact-section">
     
      <div class="section-heading">
        <h4>Contact us</h4>
      </div>

      <div class="inputField">
          <asp:TextBox ID="TextBox1" runat="server" class="form-control" placeholder="Your name" autocomplete="on" required></asp:TextBox>
        <span class="valid_info_name"></span>
      </div>

      <div class="inputField">
          <asp:TextBox ID="TextBox2" runat="server" class="form-control" placeholder="Your email" autocomplete="on" required></asp:TextBox>
        <span class="valid_info_email"></span>
      </div>

      <div class="inputField">
          <textarea id="TextArea1" runat="server" cols="20" rows="2" placeholder="Your message"></textarea>
        <span class="valid_info_message"></span>
      </div>

      <div class="inputField btn">
          <asp:Button ID="Button1" runat="server" Text="Send Message" class="main-gradient-button" onclick="Button1_Click" style="margin-top: 9px" />
      </div>

  </section>
</asp:Content>
