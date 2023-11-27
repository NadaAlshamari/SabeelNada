<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="courseInfo.aspx.cs" Inherits="EN.pages.courseInfo" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">


<style>
    /*styling.css*/
/*Body:
-Give the body element a relative position for the scrollspy to work.
-Add a font family to the whole page */
body{
    font-family: 'Vollkorn', sans-serif;
    position: relative;
}
/*Video:
-Set the video as background, make it fixed.
-make sure it appears behind all elements.
-make it spread across the whole webpage*/
video#bgvideo{
    position: fixed;
    min-height: 100%;
    min-width: 100%;
    z-index: -100;
}

/*Video does not work in small devices:
-Hide the video and set picture as background (use media queries)
-make it spread accross the whole webpage*/
@media (max-device-width:768px){
    body{
        background: url("http://res.cloudinary.com/dfqddpjfl/video/upload/v1498777628/nature_video_ntgv60.mp4") center center fixed;
        background-size: cover;
    }
    #bgvideo{
        display: none;   
    }
}


#home{
    background-color: transparent;
    color: #fff;
    text-align: center;
    padding-top: 15%;
}
#home h1{
    margin-bottom: 30px;   
}
#home h2{
    margin-bottom: 50px;   
}
#home .btn{
    background-color: rgb(29, 167, 179);
    color: #fff;
    font-size: 20px;
    padding: 8px 20px;
    border-radius: 8px;
}
#home .btn:hover{
    background-color: rgba(29, 167, 179, 0.5);
}

/*Style the About section: 
-add padding-top so that the nav link is active before the carousel hits the top border of the page-
-Limit its width in big devices to 1000px-
-make headings bold and set the dimensions of pictures */
.container{
    max-width: 100%;   
}
#about{
    color: #fff;
    text-align: center;
    padding-top: 100px;
}
#about h2{
    font-weight: bold;
}
#about p{
    font-size: 17px;
    margin-bottom: 30px;
}
.aboutImage{
    height: 120px;   
}


#promise{
    padding-top: 100px;   
}
#myCarousel{
    width: 60%;
    margin: 0 auto;
}
.carousel-inner .item img{
    height: 400px; 
    margin: 0 auto;
}

.carousel-caption{
    position: relative;
    left: auto;
    right: auto;
    height: 200px;
}


/*Style the pictures and nav-brand for different screens*/
@media (max-width:768px){
    .carousel-inner .item img{
        height: 300px;   
    }
    .carousel-inner h2{
        font-size: 23px;   
    }
}
@media (max-width:400px){
    .carousel-inner .item img{
        height: 200px;   
    }
    .carousel-inner h2{
        font-size: 17px;   
    }
}

</style>

<body data-spy="scroll" data-target="#mynavBar">
     <!--Add video to the body element-->
      <video autoplay loop muted id="bgvideo">
          <source src="http://res.cloudinary.com/dfqddpjfl/video/upload/v1498777628/nature_video_ntgv60.mp4" type="video/mp4">
      </video>
      
      
      <!--Create the home section with title, goal and joins us button-->
      <div class="jumbotron" id="home">
          <div class="container">
              <h1>Basic Level</h1>
              <h2>Go from Zero-skills to Cash-Earning English Basics</h2>
              <p><a class="btn" href="courseVideos">Join Now!</a></p>
          </div>
      </div>
      
      <!--Create about section showing course details using grid system-->
      <div id="about">
          <div class="container">
              <div class="row">
                  <div class="col-md-4">
                      <img src="http://res.cloudinary.com/dfqddpjfl/image/upload/v1498777628/quality_q31k6u.png" class="aboutImage">
                      <h2>High Quality Lectures</h2>
                  </div>
                  <div class="col-md-4">
                      <img src="http://res.cloudinary.com/dfqddpjfl/image/upload/v1498777629/tools_yorndk.png" class="aboutImage">
                      <h2>+80H of Rich Content</h2>
                  </div>
                  <div class="col-md-4">
                      <img src="http://res.cloudinary.com/dfqddpjfl/image/upload/v1498777627/help_dfec8u.png" class="aboutImage">
                      <h2>Get Help Anytime!</h2>
                  </div>
              </div>
          </div>
      </div>
      
  </body>


</asp:Content>
