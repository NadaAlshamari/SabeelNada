<%@ Page Title="About" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="About.aspx.cs" Inherits="EN.About" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <link href='https://fonts.googleapis.com/css?family=Roboto:500,900,100,300,700,400' rel='stylesheet' type='text/css'>

    <style>
        @import url("https://fonts.googleapis.com/icon?family=Material+Icons");


        h1 {
        padding: 4pt;
        }
        .about_us{
        display: block;
        background: #87d0ee;
        color: rgba(255, 255, 255, 0.7);
        vertical-align: middle;
        text-align: left;
        position: relative;
        padding: 90px 10% 50px 10%;
        }

        .about_us > h2{
        display: block;
        color: rgba(255, 255, 255, 1);
        font-size: 50px;
        line-height: 31px;
        letter-spacing: 1px;
        font-weight: 700;
        margin: 0 auto 30px;
        text-align: center;
        }

        .about_us > span {
        display: block;
        color: rgba(255, 255, 255, 1);
        font-size: 16px;
        font-weight: bold;
        line-height: 1.75;
        margin: 20px auto 10px;
        }

        .about_us > p{
        display: block;
        font-size: 16px;
        font-weight: 500;
        line-height: 1.75;
        margin: 0 auto 10px;
        }

        .about_us > img{
        display: block;
        margin-bottom: 20px;
        width: 100%;
        height:500px;
        border: 1px solid navajowhite;
        border-radius: 20px;
        }

        .about_us > .mission{
        color: rgba(255, 255, 255, 1);
        display: blcok;
        width: 60%;
        box-sizing: border-box;
        border-radius: 10px;
        background-color: rgba(92,188,224,0.4);
        margin-left: 20%;
        padding: 5px 10px; 

        }

        .about_us > .mission > span{
        display: block;
        margin: 0 auto 10px;
        font-size: x-large;
        text-align: center;
        font-weight: 500;
        line-height: 1.75;
        }
        .about_us > .mission > p{
        display: block;
        color: rgba(255, 255, 255, 1);
        margin: 0 auto 10px;
        text-align: center;
        font-weight: 500;
        line-height: 1.75;
        }

    </style>

    <div class="about_us">
      <h2>SABEEL</h2>
      <div class="mission">
        <span>MISSION</span>
        <p>Our mission is to increase your knowledge with high speed and good quality.</p>
      </div>
      <span>HISTORY</span>
      <p>
      In this project, we present a website that provides various services that contribute to the learning and self-development of students, as the website contains different and large types of content, videos, explanations, educational question banks
    This site is presented and managed in cooperation between university students in order to ensure that the content is of high quality and according to the specific need.
      </p>
      <img src="https://sabeelcommunity.org/wp-content/uploads/2022/06/2-1024x576.png" alt="">
      <span>OUR COMMITMENT</span>
      <p>
        Thank you for considering simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.

      </p>
    </div>
</asp:Content>
