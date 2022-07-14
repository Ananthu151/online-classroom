<%@ Page Title="" Language="C#" MasterPageFile="~/Student/stdnavi.Master" AutoEventWireup="true" CodeBehind="stdabout.aspx.cs" Inherits="OnlineClassroom.Student.WebForm12" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<html>
    <head>
        <style>
.boxx{
background:white;
width: 700px;
height: 450px;
position: absolute;
top: 50%;
left: 50%;
transform: translate(-50%,-50%);
//background:yellow;
box-shadow: 0 0 20px rgba(0, 0, 0, 0.15);
border-radius: 5px;
 }
#picuser{
    width:150px;
    height:150px;
    border-radius:500px;
}
.pass{
    display:flex;
    justify-content:space-around;
}
*{
    margin: 0;
    padding: 0;
    font-family: "Open Sans",sans-serif;
    box-sizing: border-box;
}

body{
    min-height: 90vh;
    display: flex;
    align-items: center;
    justify-content: center;
    background-color: #f1f1f1;
}

.about-section{
    background: url(pic.jpg) no-repeat left;
    background-size: 55%;
    background-color: #fdfdfd;
    overflow: hidden;
    padding: 100px 0;
}

.inner-container{
    width: 55%;
    float: right;
    background-color: #fdfdfd;
    padding: 150px;
}

.inner-container h1{
    margin-bottom: 30px;
    font-size: 30px;
    font-weight: 900;
}

.text{
    font-size: 13px;
    color: #545454;
    line-height: 30px;
    text-align: justify;
    margin-bottom: 40px;
}

.skills{
    display: flex;
    justify-content: space-between;
    font-weight: 700;
    font-size: 13px;
}

@media screen and (max-width:1200px){
    .inner-container{
        padding: 80px;
    }
}

@media screen and (max-width:1000px){
    .about-section{
        background-size: 100%;
        padding: 100px 40px;
    }
    .inner-container{
        width: 100%;
    }
}

@media screen and (max-width:600px){
    .about-section{
        padding: 0;
    }
    .inner-container{
        padding: 60px;
    }
}

        </style>
       
    </head>
    <body>
       
    <div class="about-section">
        <div class="inner-container">
            <h1>About Us</h1>
            <p class="text">We are Edution,An online learing solution, we provide interactive classes through internet ,material viewing and posting ,assignment submission portel,question and aswering portel,messaging system ,commenting ,Eduction provide all the facility to learn!!</p>
            <div class="skills">
                <span>Interactive Classes |</span>
                <span>Matrials and Assignments |</span>
                <span>Chating System</span>
            </div>
        </div>
    </div>
            
</body>
</html>
</asp:Content>
