<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="stdsignin.aspx.cs" Inherits="OnlineClassroom.Student.stdsignin" %>

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
	color:white;
	font-size: 14px;
	text-decoration: none;
	margin: 5px 0;
}

button {
	border-radius: 20px;
	border: 1px solid #FF4B2B;
	background-color: #00264D;
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
input[type="submit"]{
	border-radius: 20px;
	border: 1px solid  #00264D;
	background: #00264D;
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
            left: 32px;
            height: 380px;
        }

.form-container {
	position: absolute;
	top: 0;
	height: 100%;
	
}

.sign-in-container {
	left: 0;
	width: 50%;	
}

.container.right-panel-active .sign-in-container {
	transform: translateX(100%);
}

.sign-up-container {
	left: 0;
	width: 50%;
	
}

.container.right-panel-active .sign-up-container {
	transform: translateX(100%);
	
}
.overlay-container {
	position: absolute;
	top: 0;
	left: 50%;
	width: 50%;
	height: 100%;
	overflow: hidden;
}

.overlay {
	background: #00264D;
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
	height: 100%;
	width: 50%;
	
}

.overlay-right {
	right: 0;
}


</style>
</head>
<body>
<div class="container" id="container">	
	<div class="form-container sign-in-container">
		<form runat="server">
			<h1>Sign In</h1>			
			<span>use your account</span>
			<br>
		     <asp:TextBox ID="TextBox1" runat="server" type="number" placeholder="Phone Number" required autocomplete="off"></asp:TextBox>
	         <asp:TextBox ID="TextBox2" runat="server" type="password" placeholder="Password" required></asp:TextBox>
			<br>
            <asp:Button ID="Button1" runat="server" Text="Signin" OnClick="Button1_Click" />
			<br>
            			
		</form>
	</div>
	<div class="overlay-container">
		<div class="overlay">
			<div class="overlay-panel overlay-right">
				<h1>Hello, Students!</h1>
				<p>Enter your personal details and start journey with us</p>
				<a href="stdsignup.aspx"><button class="ghost">Sign Up</button></a>
				
			</div>
		</div>
	</div>
</div>
</div>
	
</body>
</html>

