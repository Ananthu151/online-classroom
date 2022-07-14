<%@ Page Title="" Language="C#" MasterPageFile="~/Student/stdnavi.Master" AutoEventWireup="true" CodeBehind="stdclassassignment.aspx.cs" Inherits="OnlineClassroom.Student.WebForm5" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<html>
       <head>
           
          <style>
              body{
                  background:#f3f3f3;
              }
           

              
            .classlist{
                width:800px;
                height:100px;
                overflow:hidden;
                margin-left:20%; 
                //background:url("tile.jpg");
                margin-bottom:20px;
                border-radius:10px 10px 0 0;
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
            .create{
                background:white;
                width:800px;
                height:40px;
                padding-left:10px;
                padding-right:10px;
                padding-top:10px;
                border-radius:0px 0px 10px 10px;
                box-shadow:6px 6px 10px -1px rgba(0,0,0,0.15),
				-6px -6px 10px -1px rgba(255,255,255,0.7);
               display:flex;

                justify-content:space-between;
            }
            #m{
                text-decoration:none;
                color:black;
            }
            #menu{
                cursor:pointer;
                display:flex;
                flex-direction:row-reverse;
                z-index:10;
              
                
            }
            .down{
                display:flex;
                flex-direction:column-reverse; 
                  background:white;
                padding:10px;
                visibility:hidden;
                border-radius:5px;
                box-shadow:6px 6px 10px -1px rgba(0,0,0,0.15),
				-6px -6px 10px -1px rgba(255,255,255,0.7);
                z-index:99;
               
               
            }
            .triker:hover .down{
                visibility:visible;
                
            }
             #aaa{
                 text-decoration:none;
                 padding:10px;
                 color:grey;
                 z-index:99;
                 background:white;
            }
             #aaa:hover{
                 color:#00172D;

             }
             .study{
                width:800px;
                height:130px;
                overflow:hidden;
               
              background:white;
                margin-bottom:20px;
                border-radius:10px;
                position:relative;               
                box-shadow:6px 6px 10px -1px rgba(0,0,0,0.15),
				-6px -6px 10px -1px rgba(255,255,255,0.7);
                
                border:1px solid grey;
                z-index:0;
              

             }
            .part1{
                height:90px;
               display:flex;
              
               padding-top:35px;
               padding-left:20px;
                
                border-bottom:1px solid grey;
            }
             .part2{
                padding-left:10px;
                 padding-top:8px;
                display:flex;
                justify-content:space-between;
                
                
            }
             #book{
                 font-size:23px;
                 color:blue;
                 
             }
             .comments{
                 text-decoration:none;
                 color:grey;
                 cursor:pointer;

             }
             .comments:hover{
                 color:black;
             }
             .ccc{
                text-decoration:none;
                color:black;
             }
           #date{
               color:grey;
               font-size:13px;
               margin-right:10px;
              
           }
           #d{
               color:red;
               position:absolute;
               margin-left:730px;
           }
           .bar{
               text-decoration:none;
               display:flex;
               justify-content:space-around;
               width:800px;
               font-size:16px;
               background-color:#f3f3f3;
              
               
               
               

           }
           .bar .bar3{
                text-decoration:none;
                border-bottom:2px solid #00172D;
                width:30.3%;
                padding-bottom:5px;
                color:#00172D;
                outline:none;
                 border-top:none;
                border-left:none;
                border-right:none;
                font-size:16px;
                cursor:pointer;
                 background:#f3f3f3;
              
              

               
              
           }
           .bar .bar2{
               text-decoration:none;
               border-bottom:2px solid #f3f3f3;
                width:30.3%;
                padding-bottom:5px;
                color:grey;
                outline:none;
                 border-top:none;
                border-left:none;
                border-right:none;
                font-size:16px;
                  cursor:pointer;
                   background:#f3f3f3;
              
               
           }
           
               
            
          </style>
       </head>
       <body>
         
           <center>
           <asp:DataList ID="D1" runat="server">
              <ItemTemplate>
                   
              <table>
                   
                   <tr >
                     <td class="classlist"  style="background:url('../images/<%#Eval("cimage") %>');">
                         <div id="name">
                         <%#Eval("cname") %> </div>
                         </td>
                   </tr>
                  
                   <br />
                
                  <tr>
                 <td class="create">
                     <a href=""></a>
                     <div class="triker">
                         <div class="more">
                         <i class="fas fa-ellipsis-v" style="black" id="menu"></i>
                         </div>
                         <div class="down" style="z-index:99;">
                            
                         <a id="aaa" href="stdviewstudents.aspx">View Students</a>
                          <a id="aaa" href="stdclassdetails.aspx">Class Details</a>
                          <a id="aaa" href="stdtochat.aspx">Chat</a>   
                         </div>
                     
                     </div>
                 </td>

                  </tr>
                </table>
                   
              
               </ItemTemplate>
                  
           </asp:DataList>
               <br />
               <div class="bar">
                  
                   <asp:Button runat="server" Text="Materials" class="bar2" OnClick="Unnamed1_Click"/>
                   <asp:Button runat="server" Text="Questions" class="bar2" OnClick="Unnamed2_Click"/>
                   <asp:Button runat="server" Text="Assignment" class="bar3" OnClick="Unnamed3_Click"/>
               </div>
               <br />
               <asp:DataList ID="D2" runat="server">
                   <ItemTemplate>
                   <div class="study">
                   <div class="part1"><i class="fas fa-file-edit" id="book"></i>&nbsp&nbsp<p><%#Eval("asquestion") %></p></div>

                       
                   
                   <div class="part2"><a class="comments" href="stdaddassignment.aspx?asid=<%#Eval("asid") %>">Add Assignment</a><div id="date"><%#Eval("asdate") %> | Due: <%#Eval("asdue") %></div></div>
                   </div>
                   </ItemTemplate>
                </asp:DataList>
            </center>                 
           <br />

       </body>
     </html>
</asp:Content>
