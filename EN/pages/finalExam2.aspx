<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="finalExam2.aspx.cs" Inherits="EN.pages.finalExam2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <style>

    body {

	    font-family: Arial, sans-serif;

	    background-color: #f2f2f2;

    }

    h1 {

	    text-align: center;

	    margin-top: 50px;

    }

    form {

	    max-width: 70%;

	    margin: 40px auto;

	    background-color: #fff;

	    padding: 20px;

	    border-radius: 5px;

	    box-shadow: 0px 0px 10px #ccc;

    }

    label {

	    display: block;

	    margin-top: 10px;

    }

    select, input[type="color"], input[type="text"] {

	    display: block;

	    width: 100%;

	    padding: 10px;

	    border-radius: 5px;

	    border: none;

	    background-color: #f2f2f2;

	    margin-top: 5px;

    }

    .button {

	    background-color: #4CAF50;

	    color: #fff;

	    padding: 10px 20px;

	    border-radius: 5px;

	    border: none;

	    font-size: 16px;

	    margin-top: 10px;

	    cursor: pointer;

    }

    .button:hover {

	    background-color: #3e8e41;

    }


</style>


<body>

	<h1>Sabeel Final Exam</h1>


		<label for="name">1- Choose the correct sentence</label>
        <input id="Radio1" name="a"  runat="server" type="radio" /> The journeys we planned together are exciting
        <input id="Radio2" name="a"  runat="server" type="radio" /> Exciting the journeys we planned together
        <input id="Radio3" name="a"  runat="server" type="radio" /> The journeys exciting we planned together are

		<label for="element">2-Stretch means</label>

		<input id="Radio4" name="b"  runat="server" type="radio" /> to make the muscles longer
		<input id="Radio5" name="b"  runat="server" type="radio" /> to make the stress longer
		<input id="Radio6" name="b"  runat="server" type="radio" /> to make the muscles shorter


		<label for="color">3-What are the advantages people have when they laugh?</label>
		<input id="Radio7" name="c"  runat="server" type="radio" /> They tend to have lower blood pressure and lower stress levels
		<input id="Radio8" name="c"  runat="server" type="radio" /> They tend to have higher blood - pressure and lower stress levels
		<input id="Radio9" name="c"  runat="server" type="radio" /> They tend to have lower blood pressure and high stress levels

		<label for="animal">4-They followed a new diet to .....the fat.</label>
        <input id="Radio10" name="d"  runat="server" type="radio" /> get rid of
		<input id="Radio11" name="d"  runat="server" type="radio" /> feel up to
		<input id="Radio12" name="d"  runat="server" type="radio" /> come down 


		<label for="food">5-People believe that chimpanzees are very smart animals .....</label>
        <input id="Radio13" name="f"  runat="server" type="radio" /> It is believed that chimpanzees are very smart animals.
		<input id="Radio14" name="f"  runat="server" type="radio" /> They believe that chimpanzees are very smart animals 
		<input id="Radio15" name="f"  runat="server" type="radio" /> We believe that chimpanzees are very smart animals

		<label for="weapon">6-Complete the sentence with one of these words: Someone who is confused by something is</label>
        <input id="Radio16" name="g"  runat="server" type="radio" /> puzzled
		<input id="Radio17" name="g"  runat="server" type="radio" /> astonished 
		<input id="Radio18" name="g"  runat="server" type="radio" /> fascinated


		<label for="music">7-She is really .....about the news</label>
        <input id="Radio19" name="h"  runat="server" type="radio" /> depressed
		<input id="Radio20" name="h"  runat="server" type="radio" /> depressing
		<input id="Radio21" name="h"  runat="server" type="radio" /> depress


		<label for="hobby">8-____he seems not to study at all, he passed the exam of physics surprisingly.</label>
        <input id="Radio22" name="i"  runat="server" type="radio" /> Even though
		<input id="Radio23" name="i"  runat="server" type="radio" /> Because
		<input id="Radio24" name="i"  runat="server" type="radio" /> Despite


		<label for="friend">9- ____this hospital is very rich in terms of its treatment methods, it has gained popularity during the past decade</label>
        <input id="Radio25" name="j"  runat="server" type="radio" /> Since
		<input id="Radio26" name="j"  runat="server" type="radio" /> Although
		<input id="Radio27" name="j"  runat="server" type="radio" /> Just as


		<label for="place">10- The atomic number of the element boron is 5, _____ the atomic number of the element silicon is 14</label>
        <input id="Radio28" name="k"  runat="server" type="radio" /> Whereas
		<input id="Radio29" name="k"  runat="server" type="radio" /> Although
		<input id="Radio30" name="k"  runat="server" type="radio" /> As
        <br />
        <br />

        <asp:Button ID="Button1" runat="server" Text="Submit" class="button" onclick="Button1_Click" />

</body>

</asp:Content>
