<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="finalExam.aspx.cs" Inherits="EN.pages.finalExam" %>
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


		<label for="name">1.What ________ your full name?</label>
        <input id="Radio1" name="a"  runat="server" type="radio" /> Is
        <input id="Radio2" name="a"  runat="server" type="radio" /> Are
        <input id="Radio3" name="a"  runat="server" type="radio" /> You

		<label for="element">2.________old are you?</label>

		<input id="Radio4" name="b"  runat="server" type="radio" /> How
		<input id="Radio5" name="b"  runat="server" type="radio" /> What
		<input id="Radio6" name="b"  runat="server" type="radio" /> Where


		<label for="color">3.________is your birthday?</label>
		<input id="Radio7" name="c"  runat="server" type="radio" /> What
		<input id="Radio8" name="c"  runat="server" type="radio" /> How
		<input id="Radio9" name="c"  runat="server" type="radio" /> Where

		<label for="animal">4.Where________ you live?</label>
        <input id="Radio10" name="d"  runat="server" type="radio" /> Are
		<input id="Radio11" name="d"  runat="server" type="radio" /> She
		<input id="Radio12" name="d"  runat="server" type="radio" /> He


		<label for="food">5.________is your favourite food?</label>
        <input id="Radio13" name="f"  runat="server" type="radio" /> What
		<input id="Radio14" name="f"  runat="server" type="radio" /> How
		<input id="Radio15" name="f"  runat="server" type="radio" /> Where

		<label for="weapon">6.How many ________ are there in your family?</label>
        <input id="Radio16" name="g"  runat="server" type="radio" /> People
		<input id="Radio17" name="g"  runat="server" type="radio" /> Family
		<input id="Radio18" name="g"  runat="server" type="radio" /> Like


		<label for="music">7.________are your hobbies?</label>
        <input id="Radio19" name="h"  runat="server" type="radio" /> What
		<input id="Radio20" name="h"  runat="server" type="radio" /> How
		<input id="Radio21" name="h"  runat="server" type="radio" /> Where


		<label for="hobby">8.Do you ________ any pets?</label>
        <input id="Radio22" name="i"  runat="server" type="radio" /> Have
		<input id="Radio23" name="i"  runat="server" type="radio" /> Has
		<input id="Radio24" name="i"  runat="server" type="radio" /> Were


		<label for="friend">9.________is your favourite actor/actress?</label>
        <input id="Radio25" name="j"  runat="server" type="radio" /> Who
		<input id="Radio26" name="j"  runat="server" type="radio" /> What
		<input id="Radio27" name="j"  runat="server" type="radio" /> Where


		<label for="place">10.________do you do? (asking about someone's profession).</label>
        <input id="Radio28" name="k"  runat="server" type="radio" /> What
		<input id="Radio29" name="k"  runat="server" type="radio" /> How
		<input id="Radio30" name="k"  runat="server" type="radio" /> Where
        <br />
        <br />

        <asp:Button ID="Button1" runat="server" Text="Submit" class="button" onclick="Button1_Click" />

</body>

</asp:Content>
