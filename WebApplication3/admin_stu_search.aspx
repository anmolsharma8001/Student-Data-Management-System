<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="admin_stu_search.aspx.cs"  MasterPageFile="~/Admin.Master" Inherits="WebApplication3.WebForm3" %>

   <asp:Content ID="Content1" runat="server" contentplaceholderid="ContentPlaceHolder2">
       <div class="container" style="border:2px solid black;border-radius:5px;">
         <center>
            <table style="width:700px;">
                <tr>
                    <td>
                        <asp:TextBox ID="TextBox1" runat="server" Height="32px" Width="248px" CssClass="textcls" placeholder="Serial no." OnTextChanged="TextBox1_TextChanged"></asp:TextBox>
                    </td>
                    <td>
                        <asp:Label ID="Label1" runat="server" Text="'OR'" Font-Bold="true"></asp:Label>
                    </td>
                     <td>
                        <asp:TextBox ID="TextBox2" runat="server" Height="32px" Width="248px" CssClass="textcls" placeholder="Name" OnTextChanged="TextBox2_TextChanged"></asp:TextBox>
                    </td>
                    <td>
                        <asp:DropDownList ID="DropDownList1" runat="server" Height="32px" Width="248px" CssClass="textcls">
                            <asp:ListItem>-SELECT COURSE </asp:ListItem>
                            <asp:ListItem>Btech </asp:ListItem>
                            <asp:ListItem>BCA </asp:ListItem>
                            <asp:ListItem>B-ed. </asp:ListItem>
                            <asp:ListItem>BBA </asp:ListItem>
                            <asp:ListItem>BSc. </asp:ListItem>
                            <asp:ListItem>Mtech. </asp:ListItem>
                            <asp:ListItem>MCA </asp:ListItem>
                            <asp:ListItem>MBA </asp:ListItem>
                            <asp:ListItem>Polytechnic </asp:ListItem>
                            <asp:ListItem>B.Pharma </asp:ListItem>
                            <asp:ListItem>D.Pharma </asp:ListItem>
                            <asp:ListItem>BS(nursing). </asp:ListItem>
                        </asp:DropDownList>
                    </td>
                    <td>
                        <asp:DropDownList ID="DropDownList2" runat="server">
                            <asp:ListItem>2023 </asp:ListItem>
                            <asp:ListItem>2022 </asp:ListItem>
                            <asp:ListItem>2021 </asp:ListItem>
                            <asp:ListItem>2020 </asp:ListItem>
                            <asp:ListItem>2019</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                    <td>
                        <asp:Button ID="Button1" runat="server" Text="Search" CssClass="loginformbtn" Font-Bold="True" Font-Names="Arial" Font-Size="Medium" ForeColor="White" Height="38px" Width="128px" OnClick="Button1_Click" />
                    </td>  
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="Label2" runat="server" Text="Label" Font-Bold="True" ForeColor="#CC0000" Visible="False"></asp:Label>
                    </td>
                </tr>
            </table>
         </center>
       </div>
       <div>
           <h5 style="background-color:darkred;color:white;padding:2px;">Student's Details</h5>
           <asp:GridView ID="GridView1" runat="server" Font-Bold="True" GridLines="Horizontal" ShowHeader="False" BorderStyle="Solid" CellPadding="1" AllowSorting="True" Width="100%"></asp:GridView>
           
       </div>
        <div class="row" id="divform">
            <asp:Panel ID="Panel1" runat="server" Enabled="false">
        <table style="width:1000px">
            <tr>
                <td style="width: 419px">
                    <asp:Label ID="Label3" runat="server" Text="Student name" CssClass="labeld"></asp:Label>
                   
                </td>
                <td style="width: 414px">
                    <asp:TextBox ID="TextBox3" runat="server" Height="30px" Width="271px" CssClass="textcls"></asp:TextBox>
                </td>
           
                <td style="width: 419px">
                    <asp:Label ID="Label4" runat="server" Text="Father's name" CssClass="labeld"></asp:Label>
                    
                </td>
                <td style="width: 414px">
                    <asp:TextBox ID="TextBox4" runat="server" Height="33px" Width="271px" CssClass="textcls"></asp:TextBox> 
                </td>
            </tr>
            <tr>
                <td style="width: 419px; height: 33px;">
                    <asp:Label ID="Label5" runat="server" Text="Mother's name" CssClass="labeld"></asp:Label>
                </td>
                <td style="width: 414px; height: 33px;">
                    <asp:TextBox ID="TextBox5" runat="server" Height="29px" Width="271px" CssClass="textcls"></asp:TextBox>
                </td>
          
                <td style="width: 419px">
                    <asp:Label ID="Label6" runat="server" Text="DOB" CssClass="labeld"></asp:Label>
                </td>
                <td style="width: 414px">
                    <!--<input type="date" id="dob" style="width: 271px; height: 30px" class="textcls"/>-->
                    <asp:TextBox ID="TextBox16" runat="server" placeholder="dd/mm/yyyy" CssClass="textcls" TextMode="Date"></asp:TextBox>
                </td>
            </tr>
          
            <tr>
                <td style="width: 419px">
                    <asp:Label ID="Label7" runat="server" Text="Gender" CssClass="labeld"></asp:Label>
                </td>
                <td style="width: 414px">
                    <asp:TextBox ID="TextBox20" runat="server"></asp:TextBox>
                </td>
            
                <td style="width: 419px">
                    <asp:Label ID="Label8" runat="server" Text="Addmission Year" CssClass="labeld"></asp:Label>
                </td>
                <td style="width: 414px">
                    <asp:TextBox ID="TextBox6" runat="server" Height="29px" Width="271px" CssClass="textcls"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td style="width: 419px">
                    <asp:Label ID="Label9" runat="server" Text="Course/Standard" CssClass="labeld"></asp:Label>
                </td>
                <td style="width: 414px">
                    <asp:TextBox ID="TextBox19" runat="server"></asp:TextBox>
                </td>
           
                <td style="width: 419px">
                    <asp:Label ID="Label10" runat="server" Text="Adhar no." CssClass="labeld"></asp:Label>
                </td>
                <td style="width: 414px">
                    <asp:TextBox ID="TextBox7" runat="server" Height="29px" Width="271px" CssClass="textcls"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td style="width: 419px">
                    <asp:Label ID="Label11" runat="server" Text="Mobile no." CssClass="labeld"></asp:Label>
                </td>
                <td style="width: 414px">
                    <asp:TextBox ID="TextBox8" runat="server" Height="29px" Width="271px" CssClass="textcls"></asp:TextBox>
                </td>
            
                <td style="width: 419px">
                    <asp:Label ID="Label12" runat="server" Text="Email Address" CssClass="labeld"></asp:Label>
                </td>
                <td style="width: 414px">
                    <asp:TextBox ID="TextBox9" runat="server" Height="29px" Width="271px" CssClass="textcls"></asp:TextBox>
                </td>
            </tr>
            <tr>
                 <td style="width: 419px">
                    <asp:Label ID="Label13" runat="server" Text="Current Address" CssClass="labeld"></asp:Label>
                </td>
                <td style="width: 414px">
                    <asp:TextBox ID="TextBox10" runat="server" Height="54px" Width="271px" CssClass="textcls"></asp:TextBox>
                </td>
            
                <td style="width: 419px">
                    &nbsp;</td>
                <td style="width: 414px">
                    &nbsp;</td>
                
            </tr>
            <!--
              <tr>
                <td style="width: 419px">
                    <asp:Label ID="Label15" runat="server" Text="District" CssClass="labeld"></asp:Label>
                </td>
                <td style="width: 414px">
                    <asp:TextBox ID="TextBox21" runat="server"></asp:TextBox>
                </td>
                <td style="width: 419px">
                    <asp:Label ID="Label16" runat="server" Text="State" CssClass="labeld"></asp:Label>
                </td>
                <td style="width: 414px">
                    <asp:TextBox ID="TextBox22" runat="server"></asp:TextBox>
                </td>
            </tr>-->
            <tr>
                  <td style="width: 419px">
                    <asp:Label ID="Label17" runat="server" Text="Course Fees(Rs.)" CssClass="labeld"></asp:Label>
                </td>
                <td style="width: 414px">
                    <asp:TextBox ID="TextBox12" runat="server" Height="40px" Width="140px" CssClass="textcls"></asp:TextBox>
                </td>
                
               
            </tr>
            <tr>
                <td style="width: 419px">
                    <asp:Label ID="Label19" runat="server" Text="Rmaining Fees(Rs.)" CssClass="labeld"></asp:Label>
                </td>
                <td style="width: 414px">
                    <asp:TextBox ID="TextBox14" runat="server" Height="40px" Width="140px" CssClass="textcls"></asp:TextBox>
                </td>
                
                
            </tr>
             <!--<tr>
                 <td style="width: 419px">
                    <asp:Label ID="Label22" runat="server" Text="Password" CssClass="labeld"></asp:Label>
                </td>
                <td style="width: 414px">
                    <asp:TextBox ID="TextBox17" runat="server" Height="29px" Width="271px" TextMode="Password" CssClass="textcls"></asp:TextBox>
                </td>
            
                <td style="width: 419px">
                    <asp:Label ID="Label23" runat="server" Text="Confirm Password" CssClass="labeld"></asp:Label>
                </td>
                <td style="width: 414px">
                    <asp:TextBox ID="TextBox18" runat="server" Height="29px" Width="271px" TextMode="Password" CssClass="textcls"></asp:TextBox>
                   
                </td>
                
            </tr>-->
            <!--This is button Row-->
           
            
        </table>   
       </asp:Panel>  
        <table>
            <tr>
                <td style="width: 225px">
                    <asp:Label ID="Label20" runat="server" Text="Deposit(Rs.)"  CssClass="labeld"></asp:Label>
                </td>
                <td style="width: 414px">
                    <asp:TextBox ID="TextBox15" runat="server" Height="40px" Width="140px" CssClass="textcls" Enabled="False"></asp:TextBox>
                </td>
                 <td>
                   <asp:Button ID="Button2" runat="server" Text="Deposit Fee" CssClass="loginformbtn" OnClick="Button2_Click" Enabled="false" Height="44px" Width="116px" />
               </td>

            </tr>
            
        </table>   
    </div>
       <asp:SqlDataSource ID="SqlDataSource1" runat="server"></asp:SqlDataSource>
    </asp:Content>
