<%@ Page Title="" Language="C#" MasterPageFile="~/Student/stdnavi.Master" AutoEventWireup="true" CodeBehind="stdchat.aspx.cs" Inherits="OnlineClassroom.Student.WebForm9" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<!DOCTYPE html>
<html>
<head>
	<title>Chat</title>
	
	<style> 
	 html{
	 scroll-behavior: smooth;
}

	
.chatbox{
 
	
background:white;
width: 550px;
height: 450px;
position: absolute;
top: 50%;
left: 50%;
transform: translate(-50%,-50%);

box-shadow: 0 0 20px rgba(0, 0, 0, 0.15);
border-radius: 5px;


}


.chatlogs{

width: 100%;
height: 370px;
padding: 10px;
margin-top: 22px;
overflow-y: scroll;

}
#bar{
	position:absolute;
	width: 550px;
	height: 45px;
z-index: 2;
border-radius: 5px;
border-bottom-right-radius: 0;
border-bottom-left-radius: 0;
	left:50%;
	top: 0%;
	transform: translate(-50%,-50%);
	background:#00172D;
	

}

.chat1{
	margin: 7px 0;
	width:520px;
	display: flex;
	
     justify-content: flex-end;
	
	align-items: end;

}

.chat1 .meg{
	max-width: 90%;
	padding: 10px 15px;
	margin: 5px 10px 0;
	overflow-wrap: break-word;
	border-radius: 60px 60px 0 60px;
	font-family: sans-serif;
	font-size: 14px;
	background-color: #00172D;
	order:-1;
	color: white
	
}
.chat2{
	margin: 7px 0;
	
	width:520px;
	display: flex;
	
justify-content: flex-start;
	flex-flow: row-wrap;
	align-items: center;

}

.chat2 .meg{
	max-width: 90%;
	padding:  10px 15px;
	margin: 5px 10px;
	overflow-wrap: break-word;
	border-radius:0 60px 60px  60px ;
	font-family: sans-serif;
	font-size: 14px;
	background-color: #f3f3f3;
	order:-1;
	color: black;
	
}


.bar{
	border-bottom: .5px gray solid;
	background:#00172D;

}
.send{
	margin-top: 3px;
	text-align: center;
	display: flex;
	align-items: center;
	justify-content: center;
}
input[type="text"]{
	width: 80%;
	height: 35px;
	background-color: #f3f3f3;
	outline: none;
	border:none;
	border-radius: 25px;
	margin-left: 40px;
}
.bb1{
	cursor: pointer;
	margin-left: 8px;
	background-color:transparent;
	outline: none;
	position:absolute;
	border:none;
	padding-bottom:1px;
	color: #00172D;
	font-weight: bolder;
	font-size: 30px;
	
}

i1{
	
	background-color: white;
	border-radius: 25px;
	position: absolute;
	left: 8px;
	color: #1f92e7;
}
.icon1{
	top: -15px;
	left: 40px;
position: absolute;
width: 30px;
height: 30px;
text-align: center;
display: flex;

align-items: center;

align-content: center;
vertical-align: center;
background-color: white;
border-radius: 25px;
z-index: 100;
} #picuser{
                width:40px;
               
                height:40px;
                border-radius:50px;
           }
  #chatdate{
	  font-size:7px;
	  position:relative;
	
	  
  }


	</style>
</head>
<body>
	<div>


<div class="chatbox">
	<div id="bar"></div>
	  <asp:DataList ID="Data2" runat="server">
      <ItemTemplate>
	     <div class="icon1">
        <img id="picuser" src="../images/<%#Eval("timage") %>" />
		&nbsp&nbsp<p style="color:white;"><%#Eval("tname") %></p>

	     </div>
		 </ItemTemplate>
         </asp:DataList>

	<div class="chatlogs">
		 <asp:DataList ID="Data1" runat="server">
                   <ItemTemplate>
		<div class="chat1"  style='display:<%#Eval("smeg") %>'>
			
			<p class="meg"><%#Eval("smeg") %></p>		
		</div>
					   
	
		
		<div class="chat2" style='display:<%#Eval("tmeg") %>'>
			
					<p class="meg"><%#Eval("tmeg") %></p>	
			     

		 </ItemTemplate>
         </asp:DataList>
		
<div id="bottom"></div>
	
	</div>
	
		
	<asp:TextBox ID="TextBox1" runat="server" type="text" placeholder="Type a Message" required="true" autocomplete="off"></asp:TextBox>
	<asp:Button ID="Button1" class="bb1" runat="server" text=">" OnClick="Button1_Click"/>
	
	
  
    </div>

</div>
	
</body>
	
</html>
</asp:Content>
