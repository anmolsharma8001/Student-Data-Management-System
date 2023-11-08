<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="createid.aspx.cs" Inherits="WebApplication3.WebForm6" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <div class="row">
      <div class="row">
         
              <table>
                  <tr>
                    <td>
                        <asp:Button ID="Button4" runat="server" Text="Create ID" CssClass="loginformbtn" OnClick="Button4_Click" Width="118px"/>
                    </td>
                    <td>
                        <asp:Button ID="Button5" runat="server" Text="Edit/search" CssClass="loginformbtn" Width="109px" OnClick="Button5_Click" />
                    </td>
                    <td>
                        <asp:Button ID="Button6" runat="server" Text="All Faculty Details" Width="171px" CssClass="loginformbtn" OnClick="Button6_Click" />
                    </td>
                  </tr>
              </table>
         
      </div>
    <div class="col-6"> 
      <asp:Panel ID="Panel2" runat="server" Visible="false">
        <center>
      <h5 style="background-color:darkred;color:white;padding:2px;">Create ID Panel</h5>
      <table>
          <asp:Label ID="Label2" runat="server" Text="Label" Visible="False" Font-Bold="True" ForeColor="Red"></asp:Label>
        <tr>
            <td style="font-family: Arial">
                <span style="font-weight: bold">Name</span></td>
            <td>
                <asp:TextBox ID="TextBox1" runat="server" Height="30px" Width="271px" CssClass="textcls"></asp:TextBox>
            </td>
        </tr>
      <tr>
            <td style="font-family: Arial">
                <span style="font-weight: bold">Gender</span></td>
            <td>
                <asp:DropDownList ID="DropDownList3" runat="server" Height="30px" Width="271px" CssClass="textcls">
                    <asp:ListItem>-Select-</asp:ListItem>
                    <asp:ListItem>Male</asp:ListItem>
                    <asp:ListItem>Female</asp:ListItem>

                </asp:DropDownList>
            </td>
        </tr>
         <tr>
            <td style="font-family: Arial">
                <span style="font-weight: bold">Department</span></td>
            <td>
                <asp:DropDownList ID="DropDownList1" runat="server" Height="30px" Width="271px" CssClass="textcls">
                    <asp:ListItem>-Select-</asp:ListItem>
                    <asp:ListItem>FIET</asp:ListItem>
                    <asp:ListItem>FIM</asp:ListItem>
                    <asp:ListItem>FIP</asp:ListItem>
                    <asp:ListItem>Medical Science</asp:ListItem>
                    <asp:ListItem>Office Faculty</asp:ListItem>
                </asp:DropDownList>
            </td>
        </tr>
         <tr>
            <td style="font-family: Arial">
                <span style="font-weight: bold">Desination</span></td>
            <td>
                <asp:DropDownList ID="DropDownList2" runat="server" Height="30px" Width="271px" CssClass="textcls">
                    <asp:ListItem>-Select-</asp:ListItem>
                    <asp:ListItem>Administrator</asp:ListItem>
                    <asp:ListItem>Associate Professor</asp:ListItem>
                    <asp:ListItem>Asst. professor</asp:ListItem>
                    <asp:ListItem>Cashier/Accountant</asp:ListItem>
                    
                   
                </asp:DropDownList>
            </td>
        </tr>
          <tr>
            <td style="font-family: Arial">
                <span style="font-weight: bold">Mobile no.</span></td>
            <td>
                <asp:TextBox ID="TextBox4" runat="server" Height="30px" Width="271px" TextMode="Phone" CssClass="textcls"></asp:TextBox>
            </td>
        </tr>
          
        <tr>
            <td style="font-family: Arial">
                <span style="font-weight: bold">User/Email</span></td>
            <td>
                <asp:TextBox ID="TextBox2" runat="server" TextMode="Email" Height="30px" Width="271px" CssClass="textcls"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="font-family: Arial">
                <span style="font-weight: bold">Password</span></td>
            <td>
                <asp:TextBox ID="TextBox3" runat="server" TextMode="Password" Height="30px" Width="271px" CssClass="textcls"></asp:TextBox>
            </td>
        </tr>

      <tr>
          <td>
              <asp:Button ID="Button1" runat="server" Text="Create ID" OnClick="Button1_Click" />
          </td>
          
          <td>
             
          </td>
      </tr>
    </table>
    </center>
     </asp:Panel>
     <asp:Panel ID="Panel1" runat="server" Visible="false">
        <center>
      <h5 style="background-color:darkred;color:white;padding:2px;">Update/Delete ID Panel</h5>
            
      <table>
          <asp:Label ID="Label1" runat="server" Text="Label" Font-Bold="True" ForeColor="Red" Visible="False"></asp:Label>
          <tr> 
              <td style="font-family: Arial">
                <span style="font-weight: bold">ID</span></td>
            <td>
                <asp:TextBox ID="TextBox12" runat="server" Height="30px" Width="271px" CssClass="textcls" OnTextChanged="TextBox12_TextChanged" placeholder="Serial no."></asp:TextBox>
                <asp:Button ID="Button7" runat="server" Text="Button" OnClick="Button7_Click" />
            </td>
          </tr>
        <tr>
            <td style="font-family: Arial">
                <span style="font-weight: bold">Name</span></td>
            <td>
                <asp:TextBox ID="TextBox5" runat="server" Height="30px" Width="271px" CssClass="textcls" Enabled="False"></asp:TextBox>
            </td>
        </tr>
      <tr>
            <td style="font-family: Arial">
                <span style="font-weight: bold">Gender</span></td>
            <td>
                <asp:TextBox ID="TextBox11" runat="server" Enabled="False" Width="271px"></asp:TextBox>
            </td>
        </tr>
         <tr>
            <td style="font-family: Arial">
                <span style="font-weight: bold">Department</span></td>
            <td>
                <asp:TextBox ID="TextBox10" runat="server" Width="271px" Enabled="False"></asp:TextBox>
            </td>
        </tr>
         <tr>
            <td style="font-family: Arial">
                <span style="font-weight: bold">Desination</span></td>
            <td>
                <asp:TextBox ID="TextBox9" runat="server" Width="271px" Enabled="False"></asp:TextBox>
            </td>
        </tr>
          <tr>
            <td style="font-family: Arial">
                <span style="font-weight: bold">Mobile no.</span></td>
            <td>
                <asp:TextBox ID="TextBox6" runat="server" Height="30px" Width="271px" TextMode="Phone" CssClass="textcls" Enabled="False"></asp:TextBox>
            </td>
        </tr>
          
        <tr>
            <td style="font-family: Arial">
                <span style="font-weight: bold">User/Email</span></td>
            <td>
                <asp:TextBox ID="TextBox7" runat="server" TextMode="Email" Height="30px" Width="271px" CssClass="textcls" Enabled="False"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="font-family: Arial">
                <span style="font-weight: bold">Password</span></td>
            <td>
                <asp:TextBox ID="TextBox8" runat="server" TextMode="Password" Height="30px" Width="271px" CssClass="textcls"></asp:TextBox>
            </td>
        </tr>
        
      <tr>
          <td>
              <asp:Button ID="Button2" runat="server" Text="Upadate" Width="84px" OnClick="Button2_Click"/>
          </td>
          <td>
             <asp:Button ID="Button3" runat="server" Text="Delete" Width="77px" OnClick="Button3_Click" />
          </td>
      </tr>
    </table>
    </center>
     </asp:Panel>
   </div>
    <div class="row">
         <asp:Panel ID="Panel3" runat="server">
        <h5 style="background-color:darkred;color:white;padding:2px;">Reg. Faculty Details</h5>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="admin_srno" DataSourceID="SqlDataSource1" Width="100%" BorderColor="Black" BorderStyle="Dotted" GridLines="Vertical">
            <Columns>
                <asp:BoundField DataField="admin_srno" HeaderText="Sr. No." InsertVisible="False" ReadOnly="True" SortExpression="admin_srno" />
                <asp:BoundField DataField="admin_name" HeaderText="Name" SortExpression="admin_name" />
                <asp:BoundField DataField="admin_dep" HeaderText="Department" SortExpression="admin_dep" />
                <asp:BoundField DataField="admin_deg" HeaderText="Desinamtion" SortExpression="admin_deg" />
                <asp:BoundField DataField="admin_user" HeaderText="Username" SortExpression="admin_user" />
                <asp:BoundField DataField="admin_pass" HeaderText="Password" SortExpression="admin_pass" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString2 %>" SelectCommand="SELECT * FROM [Admin_data]"></asp:SqlDataSource>
    </asp:Panel>
    </div>
 </div>
</asp:Content>
