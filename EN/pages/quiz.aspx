<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="quiz.aspx.cs" Inherits="EN.pages.quiz" %>
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

	<h1>Sabeel Platform Quiz</h1>


		<label for="name">1._________ old is your father? He is 60.</label>
        
        <input id="Radio1" name="a"  runat="server" type="radio" /> How
        <input id="Radio2" name="a"  runat="server" type="radio" /> What
        <input id="Radio3" name="a"  runat="server" type="radio" /> When
<br /><hr />
		<label for="element">2. ________do you like to do in your free time?</label>

		<input id="Radio4" name="b"  runat="server" type="radio" /> What
		<input id="Radio5" name="b"  runat="server" type="radio" /> How
		<input id="Radio6" name="b"  runat="server" type="radio" /> When
<br /><hr />

		<label for="color">3.How ______ of your family members ?</label>
		<input id="Radio7" name="c"  runat="server" type="radio" /> Many
		<input id="Radio8" name="c"  runat="server" type="radio" /> Much
		<input id="Radio9" name="c"  runat="server" type="radio" /> Were
<br /><hr />

		<label for="animal">4.Choose the suitable verb: The sport of climbing _____ is</label>
        <input id="Radio10" name="d"  runat="server" type="radio" /> challenging
		<input id="Radio11" name="d"  runat="server" type="radio" /> challenged
		<input id="Radio12" name="d"  runat="server" type="radio" /> challenge
<br /><hr />

		<label for="food">5.Recover means</label>
        <input id="Radio13" name="f"  runat="server" type="radio" /> to get better after an illness
		<input id="Radio14" name="f"  runat="server" type="radio" /> to get weak after an illness
		<input id="Radio15" name="f"  runat="server" type="radio" /> to get better after a laugh
<br /><hr />

		<label for="weapon">6.It was raining all day, but they ____ decided to go to picnic.</label>
        <input id="Radio16" name="g"  runat="server" type="radio" /> nevertheless
		<input id="Radio17" name="g"  runat="server" type="radio" /> even so
		<input id="Radio18" name="g"  runat="server" type="radio" /> notwithstanding
<br /><hr />

		<label for="music">7. The ______ you study for these exams, the _______ you will become</label>
        <input id="Radio19" name="h"  runat="server" type="radio" /> harder - more successful
		<input id="Radio20" name="h"  runat="server" type="radio" /> hard - better
		<input id="Radio21" name="h"  runat="server" type="radio" /> much - better
<br /><hr />

		<label for="hobby">Relax</label>
        <input id="Radio22" name="i"  runat="server" type="radio" /> Rest
		<input id="Radio23" name="i"  runat="server" type="radio" /> Sit
		<input id="Radio24" name="i"  runat="server" type="radio" /> Sleep
<br /><hr />

		<label for="friend">9. Why is Charlie telling Hashim jokes?</label>
        <input id="Radio25" name="j"  runat="server" type="radio" /> To cheer him up
		<input id="Radio26" name="j"  runat="server" type="radio" /> To tell him the truth
		<input id="Radio27" name="j"  runat="server" type="radio" /> To get to him
<br /><hr />

		<label for="place">10. Use the correct (real talk) phrase: Did you like __ the dinner?</label>
        <input id="Radio28" name="k"  runat="server" type="radio" /> Yes. Your mom is
		<input id="Radio29" name="k"  runat="server" type="radio" /> spread
		<input id="Radio30" name="k"  runat="server" type="radio" /> quite the cook
        <br />
        <br />

        <asp:Button ID="Button1" runat="server" Text="Submit" class="button" onclick="Button1_Click" />

</body>


</asp:Content>
