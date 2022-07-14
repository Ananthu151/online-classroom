<%@ Page Title="" Language="C#" MasterPageFile="~/Teacher/thrnavi.Master" AutoEventWireup="true" CodeBehind="thrclassall.aspx.cs" Inherits="OnlineClassroom.Teacher.WebForm3" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
 <html>
       <head>
           <script type="text/javascript">
	
		function sureToApprove(cid)
		{
			if(confirm("Are you sure you want to delete this class?")){
				window.location.href ='thrdeleteclass.aspx?cid='+cid;
			}
        }

               function sureTo(mid) {
                   if (confirm("Are you sure you want to delete this material?")) {
                       window.location.href = 'thrdeletematerial.aspx?mid=' + mid;
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
               color:red;
               margin-left:730px;
           }
           .bar{
               text-decoration:none;
               display:flex;
               justify-content:space-around;
               width:800px;
              
              
               
               
               

           }
           .bar .bar2{
               text-decoration:none;
                border-bottom:2px solid red;
                width:30.3%;
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
           .bar .bar3{
                text-decoration:none;
                border-bottom:2px solid #f3f3f3;
                width:30.3%;
                padding-bottom:5px;
                color:grey;
                font-size:16px;
                outline:none;
                 border-top:none;
                border-left:none;
                border-right:none;
                  cursor:pointer;
                   background:#f3f3f3;
              
           }
           .bar .bar4{
                text-decoration:none;
                border-bottom:2px solid #f3f3f3;
                width:30.3%;
                padding-bottom:5px;
                color:grey;
                font-size:16px;
                outline:none;
                border-top:none;
                border-left:none;
                border-right:none;
                cursor:pointer;
                background:#f3f3f3;
              
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
                 <td class="create">
                     <a href="thraddmaterial.aspx"><i class="fas fa-plus-circle" style="color:red;"> add material</i></a>
                     <div class="triker">
                         <div class="more">
                         <i class="fas fa-ellipsis-v" style="black" id="menu"></i>
                         </div>
                         <div class="down" style="z-index:99;">
                            
                         <a id="aaa" href="thrviewstudents.aspx">View Students</a>
                         <a id="aaa" href="thrclassdetails.aspx">Class Details</a>
                         <a id="aaa" href="javascript:sureToApprove(<%#Eval("cid") %>)">Delete Class</a>
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
                  <asp:Button runat="server" Text="Questions" class="bar3" OnClick="Unnamed2_Click"/>
                  <asp:Button runat="server" Text="Assignment" class="bar4" OnClick="Unnamed3_Click"/>
                   
               </div>
               <br />
               <asp:DataList ID="Data2" runat="server">
                   <ItemTemplate>
                   <div class="study">
                   <div class="part1"><i class="fad fa-book" id="book"></i><a href="../files/<%#Eval("files") %>" class="ccc">&nbsp &nbsp <%#Eval("mname") %></a><a id="d" href="javascript:sureTo(<%#Eval("mid") %>)"><i class="fas fa-trash"></i></a></div>

                       
                   
                   <div class="part2"><a class="comments" href="thrviewcomments.aspx?mid=<%#Eval("mid") %>">View comments</a><div id="date"><%#Eval("mdate") %></div></div>
                   </div>
                   </ItemTemplate>
                </asp:DataList>
               
              
               
               
               </center>                 
           <br />

       </body>
     </html>
</asp:Content>
