﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="courses.aspx.cs" Inherits="EN.pages.courses" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">


<style>
    @import url("https://fonts.googleapis.com/css?family=Muli&display=swap");

    * {
      box-sizing: border-box;
      margin: 0;
    }

    :root {
      --html-color: #56cfe1;
      --css-color: #4ea8de;
      --js-color: #5e60ce;
      --light: white;
      --light-grey: rgba(255, 255, 255, 0.7);
      --dark: #050505;
      --header: #dbdbdb;
      --bg: #f0f0f0;
      --text: var(--dark);
      --text-hover: var(--text);
      --slide: cubic-bezier(0.59, 0.01, 0.48, 1);
      --mode-hover: #203297;
    }

    html {
      scroll-behavior: smooth;
    }

    body {
      font-family: "Muli", sans-serif;
      width: 100vw;
      background: var(--bg);
      overflow-x: hidden;
      transition: background 150ms;
    }

    section {
      width: 100vw;
      height: 100vh;
      position: absolute;
      top: 0;
      left: 0;
      right: 0;
      bottom: 0;
      transform: translateX(150%);
      display: none;
    }

    .main-section {
      transform: translateX(0px);
      display: block;
    }

    .course-header {
      height: 200px;
      display: flex;
      flex-direction: column;
      align-items: center;
      justify-content: center;
      background: var(--header);
      color: var(--text);
      width: 100vw;
      transition: background 150ms, color 150ms;
    }

    .mode-switch {
      position: absolute;
      right: 40px;
      top: 30px;
      z-index: 900;
      color: var(--text);
      cursor: pointer;
      font-size: 26px;
      transition: color 150ms;
    }

    .mode-switch:hover {
      color: var(--mode-hover);
    }

    .courses {
      width: 100%;
      padding: 10px;
      display: flex;
      flex-direction: column;
      align-items: center;
      justify-content: flex-start;
      margin-top:5%;
    }

    .course {
      margin-top: 20px;
      display: flex;
      width: 70%;
      max-width: 800px;
      height: 200px;
      align-items: center;
      justify-content: center;
      border-radius: 10px;
      box-shadow: 0px 10px 10px rgba(0, 0, 0, 0.2);
      overflow: hidden;
      position: relative;
    }

    .course-info {
      width: 100%;
      height: 100%;
      color: var(--light);
      display: flex;
      flex-direction: column;
      align-items: flex-start;
      justify-content: flex-start;
      padding: 30px;
      position: absolute;
      top: 0;
      left: 0;
      overflow: hidden;
      transition: width 550ms var(--slide);
    }

    .course.html .course-info {
      background: var(--html-color);
    }

    .course.css .course-info {
      background: var(--css-color);
    }

    .course.js .course-info {
      background: var(--js-color);
    }

    .course:hover .course-info,
    .course:focus-within .course-info {
      width: 35%;
    }

    .course-info span {
      text-transform: uppercase;
      font-size: 12px;
      font-weight: 600;
      color: var(--light-grey);
      margin-bottom: 12px;
    }

    .course-info h5 {
      font-size: 30px;
      font-weight: 700;
    }

    .course-info a {
      color: var(--light-grey);
      text-decoration: none;
      transition: 150ms color;
      position: absolute;
      bottom: 25px;
      left: 30px;
    }

    .course-more .chapters {
      color: var(--dark);
      text-decoration: none;
      transition: 150ms color;
      position: absolute;
      bottom: 25px;
      left: 30px;
      display: none;
    }

    .course-info a:hover {
      color: var(--light);
    }

    .course-info i {
      font-size: 14px;
    }

    .course-more {
      width: 65%;
      height: 100%;
      background: var(--light);
      color: var(--dark);
      display: flex;
      flex-direction: column;
      align-items: flex-start;
      justify-content: flex-start;
      padding: 30px;
      position: absolute;
      top: 0;
      right: 0;
      overflow: hidden;
      z-index: 10;
      transform: translateX(100%);
      transition: transform 550ms var(--slide);
    }

    .course:hover .course-more,
    .course:focus-within .course-more {
      transform: translateX(0);
    }

    .details {
      display: flex;
      justify-content: space-between;
      width: 100%;
    }

    .details > h5 {
      font-size: 13px;
      text-transform: uppercase;
    }

    .course.html .details > h5 {
      color: var(--html-color);
    }

    .course.css .details > h5 {
      color: var(--css-color);
    }

    .course.js .details > h5 {
      color: var(--js-color);
    }

    .progress {
      display: flex;
      flex-direction: column;
      align-items: flex-end;
    }

    .progress-bar {
      border-radius: 8px;
      height: 6px;
      width: 200px;
      background: rgba(200, 200, 200, 0.8);
      position: relative;
    }

    .progress-bar span {
      height: 6px;
      position: absolute;
      border-radius: 8px;
      top: 0;
      left: 0;
      z-index: 1;
    }

    .course.html .progress-bar span {
      background: var(--html-color);
    }

    .course.css .progress-bar span {
      background: var(--css-color);
    }

    .course.js .progress-bar span {
      background: var(--js-color);
    }

    .progress-text {
      font-size: 12px;
      font-weight: 400;
      margin-top: 5px;
      color: var(--dark);
    }

    .name {
      font-size: 28px;
      margin-top: 4px;
    }

    .description {
      font-size: 20px;
      margin-top: 15px;
    }

    .time {
      opacity: 0.3;
      font-weight: 600;
    }

    .continue-btn,
    .read-btn {
      align-self: flex-end;
      position: absolute;
      bottom: 20px;
      right: 30px;
      font-size: 15px;
      border-radius: 20px;
      padding: 8px 16px;
      color: var(--light);
      text-decoration: none;
      transition: opacity 150ms;
      cursor: pointer;
      border: none;
      outline: none;
    }

    .course.html .continue-btn,
    .course.html .read-btn {
      background: var(--html-color);
    }

    .course.css .continue-btn,
    .course.css .read-btn {
      background: var(--css-color);
    }

    .course.js .continue-btn,
    .course.js .read-btn {
      background: var(--js-color);
    }

    .continue-btn:hover,
    .read-btn:hover {
      opacity: 0.8;
    }

    .course .read-btn.mark {
      transform: translateX(-80px);
      background: #6ad474;
    }

    .course::before {
      content: "";
      position: absolute;
      top: 15px;
      right: 20px;
      width: 30px;
      height: 30px;
      border-radius: 50%;
      background: #6ad474;
      z-index: 50;
      opacity: 0;
      transform: translateX(50px);
      transition: transform 200ms ease-in-out, opacity 200ms;
    }

    .course::after {
      content: "";
      position: absolute;
      top: 15px;
      right: 20px;
      width: 15px;
      height: 7px;
      border-left: 4px solid white;
      border-bottom: 4px solid white;
      z-index: 55;
      opacity: 0;
      transform: translate(35px, 8px) rotate(-45deg);
      transition: transform 200ms ease-in-out, opacity 200ms;
    }

    .course.checked::before {
      transform: translateX(0px);
      opacity: 1;
    }

    .course.checked::after {
      transform: translate(-5px, 8px) rotate(-45deg);
      opacity: 1;
    }

    .reference {
      width: 100%;
      text-align: center;
      padding: 10px;
      margin-top: 15px;
      border-top-left-radius: 10px;
      border-top-right-radius: 10px;
      color: var(--text);
    }

    .note {
      width: 100%;
      text-align: center;
      padding: 10px;
      margin-top: 15px;
      font-size: 20px;
      border-top-left-radius: 10px;
      border-top-right-radius: 10px;
      color: var(--text);
    }

    .reference a {
      color: #118ab2;
      text-decoration: none;
    }

    .back {
      color: var(--text);
      position: relative;
      top: 15px;
      left: 20px;
      cursor: pointer;
      transition: color 150ms;
    }

    .back:hover {
      color: var(--text-hover);
    }

    @media screen and (max-width: 950px) {
      .course {
        width: 90%;
      }
    }

    @media screen and (max-width: 850px) {
      .course-more {
        width: 100%;
      }
      .course-more .chapters {
        display: block;
      }
      .course-info a {
        display: none;
      }
      .course:hover .course-info {
        width: 100%;
      }
    }

    .overlay {
      background: var(--header);
      position: fixed;
      top: 0;
      left: 0;
      right: 0;
      bottom: 0;
      z-index: 900;
      transform: scaleX(0);
      transform-origin: left;
      transition: transform 500ms var(--slide);
      display: grid;
      place-items: center;
      padding: 20px;
    }

    .overlay-message {
      font-size: 30px;
      font-weight: 600;
      opacity: 0;
      color: var(--text);
      transition: opacity 250ms;
      text-align: center;
    }

</style>


<section class="main-section">
  <div class="course-header">
    <i class="mode-switch fas fa-moon"></i>
    <h1>Your Courses Depend on Your Level</h1>
  </div>
  <div class="courses">
    <div class="course html" runat="server" id="level1" tabindex="1">
      <div class="course-info">
        <span>Course</span>
        <h5>Basic Level</h5>
        <a href="#" tabindex="2">Chapters <i class="fas fa-chevron-right"></i></a>
      </div>
      <div class="course-more">
        <div class="details">
          <h5>7 Chapter</h5>
          <div class="progress">
          </div>
        </div>
        <h2 class="name">Uses for semantics</h2>
        <a class="chapters" href="#" tabindex="3">Chapters <i class="fas fa-chevron-right"></i></a>
        <a class="continue-btn html" tabindex="4" href="courseInfo">Start</a>
      </div>
    </div>
    <div class="course css" runat="server" id="level2" tabindex="5">
      <div class="course-info">
        <span>Course</span>
        <h5>Intermediate Level</h5>
        <a href="#" tabindex="6">Chapters <i class="fas fa-chevron-right"></i></a>
      </div>
      <div class="course-more">
        <div class="details">
          <h5>7 Chapter</h5>
          <div class="progress">
            
          </div>
        </div>
        <h2 class="name">Adjacent Selectors</h2>
        <a class="chapters" href="#" tabindex="7">Chapters <i class="fas fa-chevron-right"></i></a>
        <a class="continue-btn css" tabindex="8" href="courseInfo1">Start</a>
      </div>
    </div>
    <div class="course js" runat="server" id="level3" tabindex="9">
      <div class="course-info">
        <span>Course</span>
        <h5>Advanced Level</h5>
        <a href="#">Chapters <i class="fas fa-chevron-right"></i></a>
      </div>
      <div class="course-more">
        <div class="details">
          <h5>7 Chapter</h5>
          <div class="progress">
            
          </div>
        </div>
        <h2 class="name">Getters and Setters</h2>
        <a class="chapters" href="#" tabindex="10">Chapters <i class="fas fa-chevron-right"></i></a>
        <a class="continue-btn js" tabindex="11" href="courseInfo2">Start</a>
      </div>
    </div>
  </div>

</section>


<div class="overlay">
  <p class="overlay-message"></p>
</div>





</asp:Content>
