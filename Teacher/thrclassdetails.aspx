<%@ Page Title="" Language="C#" MasterPageFile="~/Teacher/thrnavi.Master" AutoEventWireup="true" CodeBehind="thrclassdetails.aspx.cs" Inherits="OnlineClassroom.Teacher.WebForm19" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<html>
    <head>
        <style>
            #bg{
               position:absolute;
               transform:translate(-50%,-50%);
               top:50%;
               left:50%;
               width:100%;
               height:100%;
            }
            #block{
               position:absolute;
              
               top:30%;
               left:10%;
               font-size:60px;
               background:white;
               padding:20px;
               border-radius:10px;
               

            }
            #block2{
            
             border-radius:10px;
               top:50%;
               left:10%;
              background:white;
              padding:20px;
             text-align:left;
           
            
              position:absolute;

            }
            
        </style>

    </head>
    <body>
        <asp:DataList ID="Data1" runat="server">
             <ItemTemplate>
               
        <img id="bg" src="../images/<%#Eval("cimage") %>" />
        <h1 id="block"><%#Eval("cname") %></h1>
        <h1 id="block2">Class Code:<div style="color:red;"><%#Eval("ccode") %></div></h1>
                    
                 </ItemTemplate>
                </asp:DataList>	
    </body>
</html>
</asp:Content>
