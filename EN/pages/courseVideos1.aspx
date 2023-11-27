<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="courseVideos1.aspx.cs" Inherits="EN.pages.courseVideos1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    
<style>
    html,
    body {
      font-family: "Roboto", sans-serif;
      font-size: 100%;
      font-weight: 400;
      line-height: 1.65;
      color: white;
      background-color: #111212;
      background-image: url("https://i.postimg.cc/fbSXnBct/video.png");
      background-attachment: fixed;
      background-size: cover;
      background-position: center;
      background-blend-mode: soft-light;
    }

    small,
    .text-small {
      font-size: 0.8em;
    }

    .plyr--video {
      width: 100%;
      border-radius: 0.64em;
      box-shadow: 0.0625rem 0.125rem 0.25rem 0.0625rem rgba(0, 0, 0, 0.2);
    }

    .plyr__poster {
      width: 100%;
      height: 100%;
      background-size: cover;
      background-position: top center;
    }

    main {
      width: 100%;
      height: 100%;
      padding: 1rem 0 4rem 0;
      overflow-x: hidden;
      position: relative;
      display: flex;
    }
    main section {
      width: 100%;
      min-height: 100vh;
      display: flex;
      align-items: center;
      justify-content: center;
    }
    main section .lx-container-80 .lx-row {
      align-items: flex-start;
    }
    main section .lx-container-80 .lx-row #videoColumn .lx-row .video-header {
      width: 100%;
      margin: 0 0 1.05rem 0;
      display: flex;
      align-items: center;
      justify-content: space-between;
    }
    main section .lx-container-80 .lx-row #videoColumn .lx-row .video-header h1 {
      margin: 0;
      line-height: normal;
      font-size: 1.953em;
    }
    main section .lx-container-80 .lx-row #videoColumn .lx-row .video-header .nav-toggle {
      padding: 0.5rem;
      border-radius: 0.64em;
      box-shadow: 0.0625rem 0.125rem 0.25rem 0.0625rem rgba(0, 0, 0, 0.2);
      background-color: #1e2020;
    }
    main section .lx-container-80 .lx-row #videoColumn .lx-row .lx-card {
      width: 100%;
      margin: 1rem 0 0 0;
      padding: 0;
      display: flex;
      flex-flow: wrap column;
      overflow: hidden;
      border: none;
      background-color: #1e2020;
    }
    main section .lx-container-80 .lx-row #videoColumn .lx-row .lx-card .accordion {
      width: 100%;
      padding: 0.5rem 1rem;
      position: relative;
      border-radius: 0;
      border: none;
      text-align: left;
      font-size: 1.563em;
      background-color: #2b2e2e;
      transition: 0.3s;
    }
    main section .lx-container-80 .lx-row #videoColumn .lx-row .lx-card .accordion:after {
      content: "";
      width: 0.5rem;
      height: 0.5rem;
      transform: translate(-50%, -50%) rotate(-45deg);
      position: absolute;
      top: 50%;
      left: 95%;
      border-right: 0.125rem solid #009227;
      border-bottom: 0.125rem solid #009227;
      transition: 0.4s;
    }
    main section .lx-container-80 .lx-row #videoColumn .lx-row .lx-card .accordion.is-active:after {
      transform: translate(-50%, -50%) rotate(45deg);
    }
    main section .lx-container-80 .lx-row #videoColumn .lx-row .lx-card .panel {
      max-height: 0;
      padding: 0 1rem;
      overflow: hidden;
      font-size: 0.75em;
      transition: max-height 0.5s;
    }
    main section .lx-container-80 .lx-row #videoColumn.is-full {
      width: 100%;
    }
    main section .lx-container-80 .lx-row #navColumn {
      display: none;
    }
    main section .lx-container-80 .lx-row #navColumn .lx-row .lx-card {
      width: 100%;
      margin: 0 0 1em 0;
      padding: 0;
      overflow: hidden;
      border: none;
      background-color: #1e2020;
    }
    main section .lx-container-80 .lx-row #navColumn .lx-row .lx-card .title {
      padding: 0.8em 1em;
    }
    main section .lx-container-80 .lx-row #navColumn .lx-row .lx-card .title h2 {
      width: 100%;
      margin: 0 0 0.5rem 0;
      line-height: normal;
      text-align: left;
      font-size: 1.563em;
    }
    main section .lx-container-80 .lx-row #navColumn .lx-row .lx-card .title p {
      margin: 0;
    }
    main section .lx-container-80 .lx-row #navColumn .lx-row .lx-card .accordions {
      display: flex;
      flex-flow: wrap column;
    }
    main section .lx-container-80 .lx-row #navColumn .lx-row .lx-card .accordions .accordion {
      width: 100%;
      padding: 0.5rem 1rem;
      position: relative;
      border-radius: 0;
      border: none;
      text-align: left;
      font-size: 0.8em;
      background-color: #2b2e2e;
      transition: 0.3s;
    }
    main section .lx-container-80 .lx-row #navColumn .lx-row .lx-card .accordions .accordion:after {
      content: "";
      width: 0.5em;
      height: 0.5em;
      transform: translate(-50%, -50%) rotate(-45deg);
      position: absolute;
      top: 50%;
      left: 95%;
      border-right: 0.125rem solid #009227;
      border-bottom: 0.125rem solid #009227;
      transition: 0.4s;
    }
    main section .lx-container-80 .lx-row #navColumn .lx-row .lx-card .accordions .accordion.is-active:after {
      transform: translate(-50%, -50%) rotate(45deg);
    }
    main section .lx-container-80 .lx-row #navColumn .lx-row .lx-card .accordions .panel {
      max-height: 0;
      padding: 0 1rem;
      overflow: hidden;
      font-size: 0.75em;
      transition: max-height 0.5s;
    }
    main section .lx-container-80 .lx-row #navColumn .lx-row .lx-card .accordions .panel .go-to {
      width: 100%;
      display: flex;
      align-items: center;
      justify-content: flex-start;
    }
    main section .lx-container-80 .lx-row #navColumn .lx-row .lx-card .accordions .panel .go-to img,
    main section .lx-container-80 .lx-row #navColumn .lx-row .lx-card .accordions .panel .go-to svg,
    main section .lx-container-80 .lx-row #navColumn .lx-row .lx-card .accordions .panel .go-to i {
      height: 1.5em;
      margin: 0 0.5rem 0 0;
      color: #009227;
      object-fit: contain;
    }
    main section .lx-container-80 .lx-row #navColumn .lx-row .lx-card .accordions .panel .go-to p {
      flex-grow: 1;
    }
    main section .lx-container-80 .lx-row #navColumn .lx-row .lx-card:last-child {
      margin: 0;
    }
    main section .lx-container-80 .lx-row #navColumn.is-active {
      display: block;
    }

    @media screen and (max-width: 64rem) {
      main section .lx-container-80 .lx-row .lx-column {
        padding: 0;
      }
      main section .lx-container-80 .lx-row #videoColumn {
        width: 100%;
      }
      main section .lx-container-80 .lx-row #videoColumn .lx-row .video-header .nav-toggle {
        display: none;
      }
      main section .lx-container-80 .lx-row #videoColumn .lx-row .lx-card {
        margin: 1rem 0;
      }
      main section .lx-container-80 .lx-row #navColumn {
        width: 100%;
      }
    }
    @media screen and (max-width: 31.25rem) {
      html,
    body {
        font-size: 95%;
      }
    }
    @media screen and (max-width: 22.5rem) {
      html,
    body {
        font-size: 90%;
      }
    }
    #player
    {
        width:100%;
    }
</style>

<div class="lx-column col-md-12">
    <a href="teachers" class="btn btn-primary btn-block" style="margin-top: 3%;" runat="server" id="student">Chat With Teacher</a>
    <a href="finalExam1" class="btn btn-primary btn-block" style="margin-top: 3%;">Go To Exam</a>
</div>
<main>
  <section>
    <div class="lx-container-80">
      <div class="lx-row">
        <div id="videoColumn" class="lx-column col-md-8 is-flex">
          <div class="lx-row">
            <div class="video-header">
              <h1>Basic Level</h1>
            </div>

            <!-- example of how to use with the HTML5 <video> tag -->
            <video id="player" playsinline controls>
              <source src="" id="source" type="video/webm" />
              <track kind="captions" label="English" src="path/video-en.vtt" srclang="en" default />
            </video>
            <div class="lx-card">
                <a class="accordion">Description</a>
                <div id="accordion">
                  <div class="card">

                    <div id="collapseOne" class="collapse show" aria-labelledby="headingOne" data-parent="#accordion">
                      <div class="card-body" runat="server" id="desc">
                        Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non cupidatat skateboard dolor brunch. Food truck quinoa nesciunt laborum eiusmod. Brunch 3 wolf moon tempor, sunt aliqua put a bird on it squid single-origin coffee nulla assumenda shoreditch et. Nihil anim keffiyeh helvetica, craft beer labore wes anderson cred nesciunt sapiente ea proident. Ad vegan excepteur butcher vice lomo. Leggings occaecat craft beer farm-to-table, raw denim aesthetic synth nesciunt you probably haven't heard of them accusamus labore sustainable VHS.
                      </div>
                    </div>
                  </div>
                </div>
            </div>
          </div>
        </div>
        <div id="navColumn" class="lx-column col-md-4 is-active">
          <div class="lx-row">
            <div class="lx-card">
                <h2>Course Videos</h2>
                <div class="accordions">
                    <a class="accordion" runat="server" id="A1"></a>
                    <a class="accordion" runat="server" id="A2"></a>
                    <a class="accordion" runat="server" id="A3"></a>
                    <a class="accordion" runat="server" id="A4"></a>
                    <a class="accordion" runat="server" id="A5"></a>
                    <a class="accordion" runat="server" id="A6"></a>
                    <a class="accordion" runat="server" id="A7"></a>                        
                </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </section>
</main>


<script>
    
    $('document').ready(function () {

        $("#MainContent_A1").click(function (e) {
            e.preventDefault();
            var link = document.getElementById("MainContent_A1").getAttribute("href");
            $('#source').attr("src", link);
            $("#player")[0].load();
        });
        //
        $("#MainContent_A2").click(function (e) {
            e.preventDefault();
            var link = document.getElementById("MainContent_A2").getAttribute("href");
            $('#source').attr("src", link);
            $("#player")[0].load();
        });
        //
        $("#MainContent_A3").click(function (e) {
            e.preventDefault();
            var link = document.getElementById("MainContent_A3").getAttribute("href");
            $('#source').attr("src", link);
            $("#player")[0].load();
        });
        //
        $("#MainContent_A4").click(function (e) {
            e.preventDefault();
            var link = document.getElementById("MainContent_A4").getAttribute("href");
            $('#source').attr("src", link);
            $("#player")[0].load();
        });
        //
        $("#MainContent_A5").click(function (e) {
            e.preventDefault();
            var link = document.getElementById("MainContent_A5").getAttribute("href");
            $('#source').attr("src", link);
            $("#player")[0].load();
        });
        //
        $("#MainContent_A6").click(function (e) {
            e.preventDefault();
            var link = document.getElementById("MainContent_A6").getAttribute("href");
            $('#source').attr("src", link);
            $("#player")[0].load();
        });
        //
        $("#MainContent_A7").click(function (e) {
            e.preventDefault();
            var link = document.getElementById("MainContent_A7").getAttribute("href");
            $('#source').attr("src", link);
            $("#player")[0].load();
        });
    });
    // DOM Loaded
    document.addEventListener("DOMContentLoaded", function () {

        const player = new Plyr("#player", {
            title: "Spring",
            controls: [
            "play-large",
            "play",
            "progress",
            "current-time",
            "duration",
            "mute",
            "volume",
            "settings",
            "pip",
            "airplay",
            "fullscreen"] });



        document.querySelectorAll(".accordion").forEach(function(acc) {
        acc.addEventListener("click", function() {
            acc.classList.toggle("is-active");
    let panel = acc.nextElementSibling;
    panel.style.maxHeight ?
    panel.style.maxHeight = null :
    panel.style.maxHeight = panel.scrollHeight + "px";
    });
    });

    });
</script>


</asp:Content>
