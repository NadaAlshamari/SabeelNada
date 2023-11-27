<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="delete.aspx.cs" Inherits="EN.pages.delete" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">


<style>
    @import url('https://fonts.googleapis.com/css?family=Raleway:100,100i,200,200i,300,300i,400,400i,500,500i,600,600i,700,700i,800,800i,900,900i');

body {
	overflow: hidden;
	background: #f9f9f9;
	font-family: 'Raleway', sans-serif;
}


.flex {
	width: 100%;
	height: 100vh;
	display: flex;
	justify-content: center;
	align-items: center;	
}

.reset {
	position: fixed;
	top: 25%;
	left: 25%;
	border: none;
	padding: 5px 10px;
	border-radius: 10px;
	color: #5a5a5a;
	font-weight: bold;
	text-transform: uppercase;
	cursor: pointer;
	outline: 0;
}






/*================ CARD ============== */


.card {
	width: 490px;
	border: 2px solid #ececec;
	border-radius: 5px;
	background: white;
}

.card .left_card {
	width: calc(70% - 20px);
	float: left;
	height: 100%;
	padding: 10px;
}
.card .right_card {
	width: calc(30% - 20px);
	padding:  20px 10px;
	float: right;
	height: 100%;
	display: flex;
	justify-content: center;
	align-items: center;
}

.card .date {
	font-weight: 300;
}

.card h3,
.card p {
	font-size: 15px;
    width: 100%;
    margin: 5px 0;
    overflow: hidden;
    white-space: nowrap;
    text-overflow: ellipsis;	
}




.circle .circle_loader {
	position: absolute;
  	border: 35px solid transparent;
  	border-color: transparent;
  	border-radius: 50%;
}

.animation {
  	animation: 0.5s linear rotate, .8s linear color ;
	animation-fill-mode: forwards;	
}

.animation_circle {
  	animation: 1s linear anim_circle;
	animation-fill-mode: forwards;	
}

.animation_card {
  	animation: 1s linear anim_card;
	animation-fill-mode: forwards;		
}

.circle {
  	position: relative;
  	width: 160px;
  	height: 105px;
  	display: flex;
	justify-content: center;
	align-items: center;
  	border-radius: 50%;
 	background: #CACACA;
	cursor: pointer;
}

.circle .icon {
	position: relative;
	z-index: 3;
	font-size: 25px;
	color: #ff4e31;
}

.circle:after {
	content: '';
	position: absolute;
	top: 0;
	left: 0;
	width: 100%;
	height: 100%;
	background: white;
	border-radius: 50%;
	border: 0.5px solid #ff4e31;
}


@keyframes color {
	0% {
		border-bottom-color: transparent;
		border-left-color: transparent;
		border-right-color: transparent;
		border-top-color: transparent;
	}
	
	20% {
		border-bottom-color: #ff4e31;
		border-left-color: transparent;
		border-right-color: transparent;
		border-top-color: transparent;		
	}
	
	30% {
		border-bottom-color: #ff4e31;
		border-left-color: #ff4e31;
		border-right-color: transparent;
		border-top-color: transparent;			
	}
	
	40% {
		border-bottom-color: #ff4e31;
		border-left-color: #ff4e31;
		border-right-color: transparent;
		border-top-color: #ff4e31;		
	}
	
	50% {
		border-bottom-color: #ff4e31;
		border-left-color: #ff4e31;
		border-right-color: #ff4e31;
		border-top-color: #ff4e31;			
	}
	
	100% {
		border-bottom-color: #ff4e31;
		border-left-color: #ff4e31;
		border-right-color: #ff4e31;
		border-top-color: #ff4e31;		
	}
}

@keyframes rotate {
  to {
    transform: rotate(360deg);
  }
}

@keyframes anim_circle {
	0% {
		transform: rotate3d(0, 0, 0, 0deg);
	}
	
	50% {
		transform: rotate3d(0, 1, 0, 180deg);
	}
	
	100% {
		transform: rotate3d(0, 1, 0, 180deg);
	}
}

@keyframes anim_card {
	0% {
		transform: translateY(0);
		opacity: 1;		
	}
	
	50% {
		transform: translateY(0);
		opacity: 1;
	}
	
	100% {
		transform: translateY(10px);
		opacity: 0;		
	}
}
</style>

    
<div class="flex">
	
	
<div class="card">
	<div class="left_card">
	<h4>Are you sure to delete?</h4>
	</div>
	<div class="right_card">
		<div class="circle">
			<span class="icon">
				<asp:Button ID="Button1" runat="server" Text="Delete?" OnClick="Button1_Click" class="btn btn-outline-danger rounded" />
			</span>
		</div>		
	</div>
	
</div>


</div>

<a href="../Default.aspx" class="reset">
	< Back To Home
</a>

</asp:Content>
