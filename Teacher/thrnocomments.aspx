<%@ Page Title="" Language="C#" MasterPageFile="~/Teacher/thrnavi.Master" AutoEventWireup="true" CodeBehind="thrnocomments.aspx.cs" Inherits="OnlineClassroom.Teacher.WebForm11" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
   <html>
       <head>
           <style>
               #ops{

                   position:absolute;
                   top:50%;
                   left:50%;
                   transform:translate(-50%,-70%);
                   height:270px;
                   width:270px;
                   border-radius:10px;
               }
               #no{
                   position:absolute;
                   top:50%;
                   left:50%;
                   transform:translate(-50%,-50%);
                   color:grey;

               }
           </style>
       </head>
       <body>
          <img id="ops" src="../images/20210702_231234.jpg"/> 
           <p id="no">No Answers!</p>
       </body>
   </html> 
</asp:Content>
