<%@ Page Title="" Language="C#" MasterPageFile="~/Student/stdnavi.Master" AutoEventWireup="true" CodeBehind="stdviewstudents.aspx.cs" Inherits="OnlineClassroom.Student.WebForm8" %>
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
                 color:red;

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
               margin-left:630px;
           }
           .cmd{
                width:800px;
                min-height:50px;
                display:flex;
                max-height:130px;
                background:white;
                margin-bottom:20px;
                border-radius:10px;
                position:relative;               
                //box-shadow:6px 6px 10px -1px rgba(0,0,0,0.15),
				-6px -6px 10px -1px rgba(255,255,255,0.7);
                //border:1px solid grey;
                z-index:0;
                

           }
           .p1{
               display:flex;
               margin-left:20px;
           }
           #user{
               font-size:20px;
               background:rgba(0,0,0,.2);
               padding:8px;
               margin-top:5px;
               border-radius:50px;
             
           }
           #uname{
               margin-left:10px;
               margin-top:17px;
           }
           .p2{
               
             position:absolute;
               text-align:left;
               overflow-wrap: break-word;             
               max-width:700px;
              margin-top:16px;
              margin-left:110px;
              
           }
           #uname2{
               margin-left:10px;
               margin-top:8px;
               font-size:11px; 
               font-weight:bold; 
               color:grey; 
               margin-top:10px;
           }
           #picuser{
                width:40px;
                margin-top:5px;
                height:40px;
                border-radius:50px;
           }
           
               
            
          </style>
       </head>
       <body>
         
           <center>
           <asp:DataList ID="DataList1" runat="server">
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
               </tr>
                </table>
                   
              
               </ItemTemplate>
                  
           </asp:DataList>
               <br />
               <asp:DataList ID="Data2" runat="server">
                   <ItemTemplate>
                  <div class="cmd">
                        
                     <div class="p1"><img id="picuser"  src="../images/<%#Eval("simage") %>"/><h5 id="uname"><a href="" style="text-decoration:none; color:black;"><%#Eval("sname") %></a></h5></div>
                      
                   </div>
                   </ItemTemplate>
                </asp:DataList>
               
              
               
               
               </center>                 
           <br />

       </body>
       </body>
     </html>
</asp:Content>
