<%@ Page Title="" Language="C#" MasterPageFile="~/Student/stdnavi.Master" AutoEventWireup="true" CodeBehind="stdhome.aspx.cs" Inherits="OnlineClassroom.Student.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<html>
       <head>
          <style>
              body{
                  background:#f3f3f3;
              }
              .addclass
              {
                  color:white;
                  background-color:#00172D;
                  position:fixed;
                  right:10%;
                  bottom:10%;
                  outline:none;
                  cursor:pointer;
                  border:none;
                 z-index:10;
                  font-size:25px;
                  border-radius:100%;
                  width:50px;
                  height:50px;

              }
              .classadd {
                  position: fixed;
                  right: 200px;
                  bottom: 11.2%;
                  color: #00172D;
                  box-shadow: 0 14px 28px rgba(0,0,0,0.25), 0 10px 10px rgba(0,0,0,0.22);
                  padding: 10px;
                  background:white;
                  border-radius: 10px;
                  cursor: pointer;
                  z-index:99;
                 
               
              }
              
            .track2{
                visibility:hidden;
                background:white;
                transition:all 0.3s ease;
                z-index:99;
               

                
            }
            .track:hover .track2{
                visibility:visible;
                z-index:99;
               
           
            }
            .classlist{
                width:750px;
                height:100px;
                overflow:hidden;
                margin-left:20%; 
                //background:url("tile.jpg");
                margin-bottom:20px;
                border-radius:10px;
                position:relative;               
                box-shadow:6px 6px 10px -1px rgba(0,0,0,0.15),
				-6px -6px 10px -1px rgba(255,255,255,0.7);
                
                //border:1px solid black;
              
            }
            .classes{
                margin-left:10%;
                border-bottom:1px solid black;
                

            }
            
            
            .pic{
                position:absolute;
                width:101%;
                height:105px;
                z-index:-2;
                
            }
            .box{
                width:100%;
            }
            #name{
                outline:none;
                color:white;
                text-decoration:none;
                font-size:26px;
                padding-left:40px;
            }
           
               
            
          </style>
       </head>
       <body>
         <div class="track">
       
          <asp:Button runat="server" Text="+" class="addclass" OnClick="Unnamed1_Click"/>
          <div class="track2"><p class="classadd">Join Class</p></div></div>
            <br />
           <div class="classes"><h2>CLASSES:</h2></div>
           <br />
           <center>
           <asp:DataList ID="DataList1" runat="server">
              <ItemTemplate>
                   
               <table>
                   
                   <tr >
                     <td class="classlist"  style="background:url('../images/<%#Eval("cimage") %>');">
                         <a href="stdclassall.aspx?cid=<%#Eval("cid") %>" id="name">
                         <%#Eval("cname") %> </a>
                         </td>
                          
                 </tr>
                   <br />
                    
                </table>
              
               </ItemTemplate>
                  
           </asp:DataList>
                
               </center>
       
           <br />
       </body>
       </html>
</asp:Content>
