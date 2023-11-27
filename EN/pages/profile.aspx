<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="profile.aspx.cs" Inherits="EN.pages.profile" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <style>
        *{
          margin: 0;
          padding: 0;
          box-sizing: border-box;
          font-family: 'Poppins', sans-serif;
        }
        .main{
          width: 100%;
          height: 100vh;
          display: flex;
          align-items: center;
          justify-content: center;
          background-image: url(https://tinypic.host/images/2023/03/20/Shapes-Abstraction-Background-2466799.jpg);
          background-position: center;
          background-size: cover;
        }
        .profile-card{
          display: flex;
          flex-direction: column;
          align-items: center;
          max-width: 400px;
          width: 100%;
          border-radius: 25px;
          padding: 30px;
          border: 1px solid #ffffff40;
          box-shadow: 0 5px 20px rgba(0,0,0,0.4);
        }
        .image{
          position: relative;
          height: 150px;
          width: 150px;
        }
        .image .profile-pic{
          width: 100%;
          height: 100%;
          object-fit: cover;
          border-radius: 50%;
          box-shadow: 0 5px 20px rgba(0,0,0,0.4);
        }
        .data{
          display: flex;
          flex-direction: column;
          align-items: center;
          margin-top: 15px;
        }
        .data h2{
          font-size: 33px;
          font-weight: 600;
        }
        span{
          font-size: 18px;
        }
        .row{
          display: flex;
          align-items: center;
          margin-top: 30px;
        }
        .row .info{
          text-align: center;
          padding: 0 20px;
        }
    </style>

    <%foreach (var item in this.list){%>
    <div class="body">
        <section class="main">
          <div class="profile-card">
            <div class="image">
              <img src="https://tinypic.host/images/2022/12/19/img_avatar.png" alt="" class="profile-pic">
            </div>
            <div class="data">
              <h2><%= item.username %></h2>
              <span><%= item.email %></span>
            </div>
              <hr />
                <a runat="server" href="~/pages/editProfile" class="btn btn-danger">Edit Profile</a>
            <div class="row">
              <div class="info">
                
                  <%if (Int32.Parse(item.c_level) == 0)
                    { %>
                    <h3>Teacher CV</h3>
                    <%if(item.cv != null){ %>
                    <a href='../Content/CV/<%= item.email %>/<%= item.cv %>' class="btn btn-success">Download CV</a><br /><br /><br />
                    <%} %>
                    <asp:FileUpload ID="FileUpload1" runat="server" />
                  <asp:Button ID="Button1" runat="server" Text="Upload CV" class="button btn btn-primary" onclick="Button1_Click" style="margin-top: 9px" />
                  <%} %>

                  <%if (Int32.Parse(item.c_level) > 0 && Int32.Parse(item.c_level) <= 4)
                    { %>
                    <h3>Level</h3>
                    <span>Basic Level</span>
                  <%} %>
                  <%if (Int32.Parse(item.c_level) > 4 && Int32.Parse(item.c_level) <= 7)
                    { %>
                    <h3>Level</h3>
                    <span>Intermediate Level</span>
                  <%} %>
                  <%if (Int32.Parse(item.c_level) > 7 && Int32.Parse(item.c_level) <= 10)
                    { %>
                    <h3>Level</h3>
                    <span>Advanced Level</span>
                  <%} %>
                  
              </div>
            </div>

          </div>
        </section>
    </div>
    <%} %>


</asp:Content>
