<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Admin_stu_Reg.aspx.cs" MasterPageFile="~/Admin.Master" Inherits="WebApplication3.WebForm1" %>
<asp:Content ID="Content1" runat="server" contentplaceholderid="ContentPlaceHolder2">
    <div class="container-fluid">
        <center>
                        
        <div class="row" id="divform">
            <h4 style="background-color:darkred;color:white;padding:2px;">Registration form</h4>
            <asp:Label ID="Label21" runat="server" Text="error" ForeColor="Red" Visible="False"></asp:Label>
        <table style="width:1000px">
            <tr>
                <td style="width: 419px">
                    <asp:Label ID="Label3" runat="server" Text="Student name" CssClass="labeld"></asp:Label>
                   
                </td>
                <td style="width: 414px">
                    <asp:TextBox ID="TextBox1" runat="server" Height="30px" Width="271px" CssClass="textcls"></asp:TextBox>
                </td>
           
                <td style="width: 419px">
                    <asp:Label ID="Label2" runat="server" Text="Father's name" CssClass="labeld"></asp:Label>
                    
                </td>
                <td style="width: 414px">
                    <asp:TextBox ID="TextBox2" runat="server" Height="33px" Width="271px" CssClass="textcls"></asp:TextBox> 
                </td>
            </tr>
            <tr>
                <td style="width: 419px; height: 33px;">
                    <asp:Label ID="Label1" runat="server" Text="Mother's name" CssClass="labeld"></asp:Label>
                </td>
                <td style="width: 414px; height: 33px;">
                    <asp:TextBox ID="TextBox3" runat="server" Height="29px" Width="271px" CssClass="textcls"></asp:TextBox>
                </td>
          
                <td style="width: 419px">
                    <asp:Label ID="Label4" runat="server" Text="DOB" CssClass="labeld" ></asp:Label>
                </td>
                <td style="width: 414px">
                    <!--<input type="date" id="dob" style="width: 271px; height: 30px" class="textcls"/>-->
                    <asp:TextBox ID="TextBox16" runat="server" textmode="Date" CssClass="textcls"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label22" runat="server" Text="Previous College" CssClass="labeld"></asp:Label>
                </td>
                <td> 
                    <asp:TextBox ID="TextBox4" runat="server" textmode="MultiLine" CssClass="textcls" Width="100%" ></asp:TextBox>
                </td>
            </tr>
          
            <tr>
                <td style="width: 419px">
                    <asp:Label ID="Label5" runat="server" Text="Gender" CssClass="labeld"></asp:Label>
                </td>
                <td style="width: 414px">
                    <asp:DropDownList ID="DropDownList1" runat="server" Height="29px" Width="150px" CssClass="textcls">
                          <asp:ListItem>Select</asp:ListItem>
                        <asp:ListItem>Male </asp:ListItem>  
                         <asp:ListItem>Female</asp:ListItem>  
                         <asp:ListItem>other</asp:ListItem>  
                        
                    </asp:DropDownList>
                </td>
                
            
                <td style="width: 419px">
                    <asp:Label ID="Label6" runat="server" Text="Addmission Year" CssClass="labeld"></asp:Label>
                </td>
                <td style="width: 414px">
                    <asp:DropDownList ID="DropDownList5" runat="server" Height="29px" Width="150px">
                            <asp:ListItem>-Select- </asp:ListItem>
                            <asp:ListItem>2023 </asp:ListItem>
                            <asp:ListItem>2024 </asp:ListItem>
                            <asp:ListItem>2025 </asp:ListItem>
                            
                        </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td style="width: 419px">
                    <asp:Label ID="Label7" runat="server" Text="Course/Standard" CssClass="labeld"></asp:Label>
                </td>
                <td style="width: 414px">
                    <asp:DropDownList ID="DropDownList2" runat="server" Height="29px" Width="271px" CssClass="textcls">
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
           
                <td style="width: 419px">
                    <asp:Label ID="Label8" runat="server" Text="Adhar no." CssClass="labeld"></asp:Label>
                </td>
                <td style="width: 414px">
                    <asp:TextBox ID="TextBox7" runat="server" Height="29px" Width="271px" CssClass="textcls" MaxLength="12"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td style="width: 419px">
                    <asp:Label ID="Label9" runat="server" Text="Mobile no." CssClass="labeld"></asp:Label>
                </td>
                <td style="width: 414px">
                    <asp:TextBox ID="TextBox8" runat="server" Height="29px" Width="271px" CssClass="textcls" MaxLength="10"></asp:TextBox>
                </td>
            
                <td style="width: 419px">
                    <asp:Label ID="Label10" runat="server" Text="Email Address" CssClass="labeld"></asp:Label>
                </td>
                <td style="width: 414px">
                    <asp:TextBox ID="TextBox9" runat="server" Height="29px" Width="271px" CssClass="textcls" TextMode="Email"></asp:TextBox>
                </td>
            </tr>
            <tr>
                 <td style="width: 419px">
                    <asp:Label ID="Label11" runat="server" Text="Current Address" CssClass="labeld"></asp:Label>
                </td>
                <td style="width: 414px">
                    <asp:TextBox ID="TextBox5" runat="server" Height="80px" Width="271px" TextMode="MultiLine" CssClass="textcls"></asp:TextBox>
                </td>
            
                <td style="width: 419px">
                    <asp:Label ID="Label12" runat="server" Text="Parmanent Address" CssClass="labeld"></asp:Label>
                </td>
                <td style="width: 414px">
                    <asp:TextBox ID="TextBox6" runat="server" Height="80px" Width="271px" TextMode="MultiLine" CssClass="textcls"></asp:TextBox>
                    <br /><asp:CheckBox ID="CheckBox1" runat="server"  Text="Same as" CssClass="textcls" OnCheckedChanged="CheckBox1_CheckedChanged"/>
                </td>
                
            </tr>
              <!-- <tr>
                <td style="width: 419px">
                    <asp:Label ID="Label13" runat="server" Text="District" CssClass="labeld"></asp:Label>
                </td>
               <td style="width: 414px">
                    <asp:DropDownList ID="DropDownList3" runat="server" Height="29px" Width="271px" CssClass="textcls">
                          <asp:ListItem>Select</asp:ListItem>
                        <asp:ListItem>SHAHJAHANPUR</asp:ListItem>  
                         <asp:ListItem>Greater Noida</asp:ListItem>  
                         <asp:ListItem>NewYork</asp:ListItem>  
                         <asp:ListItem>Paris</asp:ListItem>  
                         <asp:ListItem>London</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td style="width: 419px">
                    <asp:Label ID="Label14" runat="server" Text="State" CssClass="labeld"></asp:Label>
                </td>
                <td style="width: 414px">
                    <asp:DropDownList ID="DropDownList4" runat="server" Height="29px" Width="271px" CssClass="textcls">
                            <asp:ListItem>Select</asp:ListItem>
                            <asp:ListItem>New Delhi </asp:ListItem>  
                            <asp:ListItem>Greater Noida</asp:ListItem>  
                            <asp:ListItem>NewYork</asp:ListItem>  
                            <asp:ListItem>Paris</asp:ListItem>  
                            <asp:ListItem>London</asp:ListItem> 
                    </asp:DropDownList>
                </td>
            </tr>-->
            <tr>
                  <td style="width: 419px">
                    <asp:Label ID="Label17" runat="server" Text="Course Fees(Rs.)" CssClass="labeld"></asp:Label>
                </td>
                <td style="width: 414px">
                    <asp:TextBox ID="TextBox12" runat="server" Height="40px" Width="140px" CssClass="textcls" OnTextChanged="TextBox12_TextChanged"></asp:TextBox>
                </td>
                
                <td style="width: 419px">
                    <asp:Label ID="Label18" runat="server" Text="Reg. Fee(Rs.)" CssClass="labeld"></asp:Label>
                </td>
                <td style="width: 414px">
                    <asp:TextBox ID="TextBox13" runat="server" Height="40px" Width="150px" CssClass="textcls" OnTextChanged="TextBox13_TextChanged" ></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td style="width: 419px">
                    <asp:Label ID="Label19" runat="server" Text="Total Fees(Rs.)" CssClass="labeld"></asp:Label>
                </td>
                <td style="width: 414px">
                    <asp:TextBox ID="TextBox14" runat="server" Height="40px" Width="140px" CssClass="textcls" Enabled="False"></asp:TextBox>                    
                    <asp:Button ID="Button3" runat="server" Text="Calculate" Height="40px" Width="96px" Font-Bold="True" Font-Names="Arial" Font-Size="Medium" ForeColor="White" CssClass="formbtn" OnClick="Button3_Click" />
                    
                
                </td>
                
                <td style="width: 419px">
                    <asp:Label ID="Label20" runat="server" Text="Deposit Fee(Rs.)"  CssClass="labeld"></asp:Label>
                </td>
                <td style="width: 414px">
                    <asp:TextBox ID="TextBox15" runat="server" Height="40px" Width="150px" CssClass="textcls"></asp:TextBox>
                </td>
            </tr>
             <tr>
                 <td style="width: 419px">
                    <asp:Label ID="Label15" runat="server" Text="Password" CssClass="labeld"></asp:Label>
                </td>
                <td style="width: 414px">
                    <asp:TextBox ID="TextBox10" runat="server" Height="29px" Width="271px" TextMode="Password" CssClass="textcls"></asp:TextBox>
                </td>
            
                <td style="width: 419px">
                    <asp:Label ID="Label16" runat="server" Text="Confirm Password" CssClass="labeld"></asp:Label>
                </td>
                <td style="width: 414px">
                    <asp:TextBox ID="TextBox11" runat="server" Height="29px" Width="271px" TextMode="Password" CssClass="textcls"></asp:TextBox>
                    <br /><asp:CheckBox ID="CheckBox2" runat="server"  Text="Show Password?" CssClass="textcls"/>
                </td>
                
            </tr>
            <!--This is button Row-->
           
            <tr>
                <td>
                    
                    <asp:Button ID="Button1" runat="server" Text="Submit" Height="37px" Width="120px" Font-Bold="True" Font-Names="Arial" Font-Size="Medium" ForeColor="White" CssClass="formbtn" OnClick="Button1_Click1" />
                    
                </td>
                <td>
                    <asp:Button ID="Button2" runat="server" Text="Reset" Height="37px" Width="120px" Font-Bold="True" Font-Names="Arial" Font-Size="Medium" ForeColor="White"  CssClass="formbtn"/>
                </td>
            </tr>
          
        </table>        
    </div>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString2 %>" SelectCommand="SELECT * FROM [Students_data]" ProviderName="<%$ ConnectionStrings:ConnectionString2.ProviderName %>"></asp:SqlDataSource>
    </center>
    </div>
    
</asp:Content>




