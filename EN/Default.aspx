<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="EN._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

<style>
        body {
            background-color: whitesmoke;
            overflow-x: hidden;
        }

        .header {
        }

            .header img {
                width: 100%;
            }

            .header .txt {
                text-align: center;
                position: relative;
                margin-top: 18%;
            }

                .header .txt p {
                    direction: ltr;
                    text-align: left;
                    font-size: 25px;
                    font-family: none;
                }

                .header .txt button {
                    width: 150px;
                    font-size: 20px;
                    font-weight: 900;
                    color: white;
                    border-radius: inherit;
                }

        .feature {
        }

            .feature .img {
                display: flex;
                justify-content: center;
                align-items: center;
            }

                .feature .img img {
                    padding-top: 10%;
                    width: 100%;
                }

            .feature .title {
                color: #004aac;
            }

        .shape {
            background-color: #fff;
            min-height: 230px;
            min-width: 230px;
            max-height: 100px;
            max-width: 100px;
        }

            .shape p {
                font-weight: 900;
                font-size: 18px;
                direction: ltr;
            }

        .octagon {
            -webkit-clip-path: polygon(25% 0%, 0% 30%, 0% 70%, 25% 100%, 75% 100%, 100% 70%, 100% 30%, 75% 0%);
            clip-path: polygon(25% 0%, 0% 30%, 0% 70%, 25% 100%, 75% 100%, 100% 70%, 100% 30%, 75% 0%);
        }

        .canvas {
            padding: 50px;
            margin: 50px auto;
            display: flex;
            flex-flow: row wrap;
            justify-content: center;
        }

            .canvas > .shape {
                display: flex;
                margin: 40px 25px;
                transition: all 0.2s ease-in-out;
                color: #000;
                justify-content: center;
                align-items: center;
                font-size: 14px;
                transition: 0.5s;
            }

                .canvas > .shape:hover {
                    color: #fff;
                    background-color: #000;
                }

        .s1 {
            position: absolute;
            top: 0;
            left: 0;
        }

        .s2 {
            position: absolute;
            top: 17%;
            left: 45%;
        }

        .s3 {
            position: absolute;
            top: 125%;
            left: 5%;
        }

        .s4 {
            position: absolute;
            top: 135%;
            left: 55%;
        }

        .types {
            position: relative;
            margin-top: 25%;
        }

            .types .title {
                color: #004aac;
            }

            .types .boxes {
                display: flex;
                align-items: center;
                justify-content: center;
            }

            .types .shapes {
                border: 1px gray solid;
                height: 170px;
                width: 170px;
                position: absolute;
                display: flex;
                justify-content: center;
                align-items: center;
                font-size: 30px;
                font-weight: 600;
                transition: 0.5s;
            }

                .types .shapes:hover {
                    border: 2px black dotted;
                    height: 180px;
                    width: 180px;
                    background-color: white;
                }

            .types .top {
                top: 0;
                left: 0;
                border-top-right-radius: 20px;
                border-top-left-radius: 20px;
            }

            .types .right {
                top: 30%;
                left: 40%;
                border-top-right-radius: 20px;
                border-bottom-right-radius: 20px;
            }

            .types .bottom {
                left: 0;
                top: 75%;
                border-bottom-left-radius: 20px;
                border-bottom-right-radius: 20px;
            }

        .contact {
            direction: rtl;
            position: relative;
            margin-top: 28%;
        }

            .contact .title {
                color: #004aac;
            }

        .about {
            font-weight: 900;
            margin-bottom: 20px;
        }

            .about input {
                border-radius: 20px;
                background-color: gray;
                padding: 5px;
                margin: 5px;
            }

                .about input:focus {
                    background-color: white;
                }

        .left {
            position: absolute;
            bottom: -231%;
            left: 3%;
        }
        .footer-basic {
        bottom: -140%!important;
    }
    </style>

<!--Start header-->
<div class="container">

  <div class="row header">
    <div class="col-md-6">
      <img src="https://raw.githubusercontent.com/akshaykhale1992/tailwind-experiment/main/images/undraw_coding_6mjf.svg" alt="">
    </div>
    <div class="col-md-6 txt">
      <div>
        <p>
        ‏SABEEL is English-Education platform provides you with a variety of content that helps you develop your skills, Targets students majoring in all levels and ages.
        </p>
      </div>
      <br>
    </div>
  </div>
  <!--End header-->

  <!--Features-->
  <div class="row feature">
    <div class="col-md-12 text-center title">
      <h1>The Main Features of Platform</h1>
    </div>
    <div class="col-md-8">
      <div class="canvas">
        <div class="shape octagon s1">
          <p class="text-center">Content that serves KKU students for information systems and computer science</p>
        </div>
        <div class="shape octagon s2">
          <p class="text-center">Promote the spirit of competition among students</p>
        </div>

        <div class="shape octagon s3">
          <p class="text-center">Easy access to information</p>
        </div>
        <div class="shape octagon s4">
          <p class="text-center">Motivation for self-learning and skills acquisition</p>
        </div>
      </div>
    </div>
    <div class="col-md-4 img">
      <img src="https://raw.githubusercontent.com/akshaykhale1992/tailwind-experiment/main/images/undraw_dev_focus_b9xo.svg" alt="">
    </div>
  </div>
  <!--End-->

</div>



  
<!--End-->

</asp:Content>
