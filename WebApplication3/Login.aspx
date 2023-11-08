<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="WebApplication3.WebForm4" %>
<link href="StyleSheet1.css" rel="stylesheet" />
<link href="bootstrap.css" rel="stylesheet" />
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            height: 57px;
        }
        .auto-style2 {
            height: 99px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <div class="container" >
         
           <center>
               <div id="login_form" >
                   <h3>ERP Login</h3>
           <table style="margin:10px; text-align:center;border:0px solid black; height:300px; ">
              
               <tr>
                    <td>
                        <asp:Label ID="Label1" runat="server" Text="label" Font-Bold="True" ForeColor="Red" Visible="False"></asp:Label>

                    </td>
                </tr>
               
              <!-- <tr>
                    <td class="auto-style1">
                        <asp:DropDownList ID="DropDownList1" runat="server" Height="35px" Width="291px">
                            <asp:ListItem>-SELECT-</asp:ListItem>
                            <asp:ListItem>-STUDENTS-</asp:ListItem>
                            <asp:ListItem>-ADMINISTRATOR-</asp:ListItem>
                           
                        </asp:DropDownList></td>
                </tr>-->

               <tr>
                    <td class="auto-style2"><asp:TextBox ID="TextBox1" runat="server" Height="60px" Width="291px" BorderWidth="2px" TextMode="SingleLine" placeholder="Username" CssClass="logintextcls"></asp:TextBox></td>
                </tr>
               <tr>
                    
                    <td><asp:TextBox ID="TextBox2" runat="server" Height="60px" Width="291px" BorderWidth="2px" TextMode="Password" placeholder="Password" CssClass="logintextcls" ></asp:TextBox></td>
                </tr>
                <tr>
                    <td>
                        <asp:Button ID="Button2" runat="server" Text="Submit" Font-Bold="True" Font-Names="Arial" Height="48px" Width="291px" CssClass="loginformbtn" OnClick="Button2_Click" />

                    </td>
                 
                  
                </tr>
               <tr>
                   <td>
                       Forgot password? contact your Admin..
                   </td>
                  
               </tr>
            </table>
                   <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString2 %>" SelectCommand="SELECT * FROM [Students_data]"></asp:SqlDataSource>
            </div>
       </center>
        </div>
        </div>
    </form>
</body>
</html>
