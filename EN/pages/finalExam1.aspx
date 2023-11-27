<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="finalExam1.aspx.cs" Inherits="EN.pages.finalExam1" %>
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


		<label for="name">1- Your name is Khaled,------</label>
        <input id="Radio1" name="a"  runat="server" type="radio" /> is it
        <input id="Radio2" name="a"  runat="server" type="radio" /> isn`t it

		<label for="element">2-You --------  stop at the traffic lights when it`s red.</label>

		<input id="Radio4" name="b"  runat="server" type="radio" /> must
		<input id="Radio5" name="b"  runat="server" type="radio" /> should


		<label for="color">3-She -------- have a rest.</label>
		<input id="Radio7" name="c"  runat="server" type="radio" /> should
		<input id="Radio8" name="c"  runat="server" type="radio" /> must

		<label for="animal">4-Ahmad works ----------.</label>
        <input id="Radio10" name="d"  runat="server" type="radio" /> well
		<input id="Radio11" name="d"  runat="server" type="radio" /> good


		<label for="food">5-I drive ---------.</label>
        <input id="Radio13" name="f"  runat="server" type="radio" /> carefully
		<input id="Radio14" name="f"  runat="server" type="radio" /> careful

		<label for="weapon">6-They should -------- warm liquid .</label>
        <input id="Radio16" name="g"  runat="server" type="radio" /> drink
		<input id="Radio17" name="g"  runat="server" type="radio" /> drinking


		<label for="music">7-Khalifa tower is the --------- tower in the world.</label>
        <input id="Radio19" name="h"  runat="server" type="radio" /> tallest
		<input id="Radio20" name="h"  runat="server" type="radio" /> tall


		<label for="hobby">8-Cheetahs are -------- than rabbits</label>
        <input id="Radio22" name="i"  runat="server" type="radio" /> faster
		<input id="Radio23" name="i"  runat="server" type="radio" /> fast


		<label for="friend">9-The driver was sleepy,--------- he didn't see the stop sign.</label>
        <input id="Radio25" name="j"  runat="server" type="radio" /> so
		<input id="Radio26" name="j"  runat="server" type="radio" /> because


		<label for="place">10-You should ( stay - staying ) home.</label>
        <input id="Radio28" name="k"  runat="server" type="radio" /> stay
		<input id="Radio29" name="k"  runat="server" type="radio" /> staying
        <br />
        <br />

        <asp:Button ID="Button1" runat="server" Text="Submit" class="button" onclick="Button1_Click" />

</body>


</asp:Content>
