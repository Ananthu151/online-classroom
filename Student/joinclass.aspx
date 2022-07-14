<%@ Page Title="" Language="C#" MasterPageFile="~/Student/stdnavi.Master" AutoEventWireup="true" CodeBehind="joinclass.aspx.cs" Inherits="OnlineClassroom.Student.WebForm2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <!DOCTYPE html>
<html>
<head>
	<title></title>
	<style>
	 
body{
	background: #f6f5f7;
	display: flex;
	align-items: center;
	flex-direction: column;
	font-family: 'Montserrat', sans-serif;
	height: 100vh;
	
}
h1 {
	font-weight: bold;
	margin-top:30px;
}

h2 {
	text-align: center;
}
span {
	font-size: 12px;
}
input[type="submit"]{
	border-radius: 25px;
	width: 200px;
	height: 40px;
	position:relative;
	background: #00172D;	
	color: #FFFFFF;
	font-size: 15px;
	font-weight: bold;
	text-transform: uppercase;
	cursor: pointer;

}

.box1 {
	background-color: #FFFFFF;
	display: flex;
	align-items: center;
	justify-content: center;
	flex-direction: column;
	padding: 0 50px;
	height: 50%;
	text-align: center;
}

input {
	background-color: #eee;
	border: none;
	font-weight: bold;
	padding: 12px 15px;
	margin: 10px 0;
	width: 100%;
	outline: none;
}
.box {
	margin-top: 5%;
	background-color: #fff;
	border-radius: 10px;
  	box-shadow: 0 14px 28px rgba(0,0,0,0.25), 
			0 10px 10px rgba(0,0,0,0.22);
	position: relative;
	
	overflow: hidden;
	width: 400px;
	max-width: 100%;
	min-height: 250px;
}
select{
	background-color: #eee;
	border: none;
	font-weight: bold;
	padding: 12px 15px;
	margin: 4px 0;
	width: 330px;
	outline: none;
}
</style>
	
</head>
<body>
	<br /><br /><br /><br /><br />
	<div class="box">
		<div class="box1">
			<br />
			<h1>Class Details</h1>
			<span>add details of the class to join</span>
			<br>			
            <asp:TextBox ID="TextBox1" runat="server" type="text" placeholder="Class Code" required="true" autocomplete="off" Size="20"></asp:TextBox>
  			<br>
			<asp:Button ID="Button1" runat="server" Text="JOIN CLASS" type="submit" OnClick="Button1_Click"/>
			<br>
		</div>
	</div> 

</body>	
</html>
</asp:Content>
