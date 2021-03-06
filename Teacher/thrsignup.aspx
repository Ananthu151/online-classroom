<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="thrsignup.aspx.cs" Inherits="OnlineClassroom.Teacher.thrsignup" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
	<style>
	 @import url('https://fonts.googleapis.com/css?family=Montserrat:400,800');

* {
	box-sizing: border-box;
}

body {
	background: #f6f5f7;
	display: flex;
	justify-content: center;
	align-items: center;
	flex-direction: column;
	font-family: 'Montserrat', sans-serif;
	height: 100vh;
	
}
input[type="submit"]{
	border-radius: 20px;
	border: 1px solid red;
	background:red;
  background-repeat: no-repeat;
  background-size: cover;
	color: #FFFFFF;
	font-size: 12px;
	font-weight: bold;
	padding: 12px 20px;
	letter-spacing: 1px;
	width: 50%;
	text-transform: uppercase;
	transition: transform 80ms ease-in;
	cursor: pointer;

}
input[type="submit"]:hover{
	background-image: url(../images/um3.jpg);
  background-repeat: no-repeat;
  background-size: cover;

}
h1 {
	font-weight: bold;
	margin: 0;
}

h2 {
	text-align: center;
}

p {
	font-size: 14px;
	font-weight: 100;
	line-height: 20px;
	letter-spacing: 0.5px;
	margin: 20px 0 30px;
}

span {
	font-size: 12px;
}

a {
	color: white;
	font-size: 14px;
	text-decoration: none;
	margin: 5px 0;
}

button {
	border-radius: 20px;
	border: 1px solid red;
	background-color:red;
	color: #FFFFFF;
	font-size: 12px;
	font-weight: bold;
	padding: 12px 45px;
	letter-spacing: 1px;
	text-transform: uppercase;
	transition: transform 80ms ease-in;
	cursor: pointer;
}
button:hover{
	background-color:#ff043e;
}

button:active {
	transform: scale(0.95);
}

button:focus {
	outline: none;
}

button.ghost {
	background-color: transparent;
	border-color: #FFFFFF;
	color: white;
	cursor: pointer;
}

form {
	background-color: #FFFFFF;
	display: flex;
	align-items: center;
	justify-content: center;
	flex-direction: column;
	padding: 0 50px;
	height: 100%;
	text-align: center;
}

input {
	background-color: #eee;
	border: none;
	font-weight: bold;	
	padding: 12px 15px;
	margin: 8px 0;
	width: 100%;
	outline: none;
}

.container {
	background-color: #fff;
	border-radius: 10px;
  	box-shadow: 0 14px 28px rgba(0,0,0,0.25), 
			0 10px 10px rgba(0,0,0,0.22);
	position: relative;
	overflow: hidden;
	width: 768px;
	max-width: 100%;
	min-height: 480px;
            top: 0px;
            left: 0px;
            height: 475px;
        }

.form-container {
	position: absolute;
	top: 0;
	height: 100%;

}

.sign-up-container {
	left: 50%;
	width: 50%;
}

.overlay-container {
	position: absolute;
	top: 0;
	width: 50%;
	height: 100%;
	overflow: hidden;
}

.overlay {
	background:red;
	background: -webkit-linear-gradient(to right, #FF4B2B, #FF416C);
	
  background-repeat: no-repeat;
  background-size: cover;
	background-repeat: no-repeat;
	background-size: cover;
	background-position: 0 0;
	color: #FFFFFF;
	position: relative;
	left: -100%;
	height: 100%;
	width: 200%;

}

.overlay-panel {
	position: absolute;
	display: flex;
	align-items: center;
	justify-content: center;
	flex-direction: column;
	padding: 0 40px;
	text-align: center;
	top: 0;
	left: 50%;
	height: 100%;
	width: 50%;
}


	</style>
</head>
<body>
<div class="container" id="container">	
	<div class="form-container sign-up-container">
		<form runat="server">
			<h1>Create Account</h1>
			<span>use your Phone number for registration</span>
			<br>
            <asp:TextBox ID="TextBox1" runat="server" type="text" placeholder="Full Name" required autocomplete="off"></asp:TextBox>
            <asp:TextBox ID="TextBox2" runat="server" type="number" placeholder="Phone Number" required="ture" autocomplete="off"></asp:TextBox>
			<asp:TextBox ID="TextBox3" runat="server" type="password" placeholder="Password" required="ture"></asp:TextBox>
			 <asp:TextBox ID="TextBox4" runat="server" type="file"  required="true"></asp:TextBox>
			<br>
            <asp:Button ID="Button1" runat="server" Text="Signup" OnClick="Button1_Click" />
			<br>    	       
		</form>
	</div>
	<div class="overlay-container">
		<div class="overlay">
			<div class="overlay-panel overlay-left">
				<h1>Welcome Back!</h1>
				<p>To keep connected with us please login with your personal info</p>
				<a href="thrsignin.aspx"><button class="ghost">Sign In</button></a>
			</div>
		</div>
	</div>
</div>
</body>
</html>

