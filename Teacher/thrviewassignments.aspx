<%@ Page Title="" Language="C#" MasterPageFile="~/Teacher/thrnavi.Master" AutoEventWireup="true" CodeBehind="thrviewassignments.aspx.cs" Inherits="OnlineClassroom.Teacher.WebForm14" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<html>
       <head>
           <script type="text/javascript">
	
		

               function sureTo(asaid) {
                   if (confirm("Are you sure you want to delete this assignment?")) {
                       window.location.href = 'thrdeleteassignmentanswer.aspx?asaid=' + asaid;
                   }
               }
		
           </script>
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
               position:absolute;
               left:770px;
               top:15px;
               
               
               color:red;
               
           }
           .cmd{
                width:800px;
                min-height:50px;
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
               margin-top:8px;
           }
           .p2{
               
             
               text-align:left;
               overflow-wrap: break-word;             
               max-width:700px;
               margin-left:70px;
               margin-top:-15px;
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
           .bar{
               text-decoration:none;
               display:flex;
               justify-content:space-around;
               width:800px;
               font-size:16px;
               background-color:#f3f3f3;
              
               
               
               

           }
           .bar .bar2{
                text-decoration:none;
                border-bottom:2px solid red;
                width:100%;
                padding-bottom:5px;
                color:red;
                outline:none;
                 border-top:none;
                border-left:none;
                border-right:none;
                font-size:16px;
                cursor:pointer;
                 background:#f3f3f3;
              
              

               
              
           }
           #uname44{
                margin-left:10px;
               margin-top:16px;

           }
           
           
               
            
          </style>
       </head>
       <body>
         <br />
           <center>
                   <asp:DataList ID="Data1" runat="server">
                   <ItemTemplate>
                   <div class="study">
                   <div class="part1"><i class="fad fa-file-edit" id="book"></i><a href="" class="ccc">&nbsp &nbsp <%#Eval("asquestion") %></a></div>
                   <div class="part2"><div id="date"><%#Eval("asdate") %> | Due: <%#Eval("asdue") %></div></div>
                   </div>
                   </ItemTemplate>
                   </asp:DataList>

                  <div class="bar">
                     <div class="bar2">Assigned</div>
                    </div>
               <br />

                   <asp:DataList ID="Data" runat="server">
                   <ItemTemplate>
                    <div class="cmd">
                        <div class="p1"><img id="picuser"  src="../images/<%#Eval("simage") %>"/><h5 id="uname"><a href="thrtochat.aspx?sid=<%#Eval("sid") %>" style="text-decoration:none; color:black;"><%#Eval("sname") %></a></h5><p id="uname2"><%#Eval("asadate") %></p></div>
                        <div class="p2"><a id="asanswer" href="../files/<%#Eval("asanswer") %>"><%#Eval("asanswer") %></a><a id="d" href="javascript:sureTo(<%#Eval("asaid") %>)"><i class="fas fa-trash"></i></a></div>
                    </div>
                   </ItemTemplate>
                   </asp:DataList>

               <div class="bar">
                     <div class="bar2" style=" color:grey; border-bottom:2px solid grey;">Not Assigned</div>
                    </div>
               <br />
                
               
                 <asp:DataList ID="Data2" runat="server">
                   <ItemTemplate>
                    <div class="cmd">
                        <div class="p1"><img id="picuser"  src="../images/<%#Eval("simage") %>"/><h5 id="uname44"><a href="thrtochat.aspx?sid=<%#Eval("sid") %>" style="text-decoration:none; color:black;"><%#Eval("sname") %></a></h5><p id="uname2"></p></div>
                        
                    </div>
                   </ItemTemplate>
                   </asp:DataList>
                   </center>                 
           <br />
       </body>
     </html>
</asp:Content>
