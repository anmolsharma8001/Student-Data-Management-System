<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Stu_Dashboard.aspx.cs" MasterPageFile="~/Student.Master" Inherits="WebApplication3.WebForm2" %>

<asp:Content ID="Content1" runat="server" contentplaceholderid="ContentPlaceHolder2">
    <!-- <asp:Button ID="Button1" runat="server" Text="Add New" Height="71px" OnClick="Button1_Click" Width="260px" />
    <asp:Button ID="Button2" runat="server" Text="Search" Height="69px" style="margin-top: 0px" Width="260px" />-
    <div class="container">
        <div class="row" id="item_box">
            <div class="col col-12 col-md-4 bsb-project-2-items"> 
               <h4>My Profile</h4>
            </div>
            <div class="col col-12 col-md-4 bsb-project-2-item">second</div>
            <div class="col col-12 col-md-4 bsb-project-2-item">third</div>
            <div class="col col-12 col-md-4 bsb-project-2-item">fourth</div>
        </div>
    </div>
    </div>
        </div>
    </div>-->

    <h2 style="text-align:center;font-weight:bold;">Students Detail's Option</h2>

    <div class="container" id="form_outer">
	
        <div class="row" id="panel-heading">
            <h5 class="panel-title">Main Dashboard</h5>
        </div>
        <div class="row">
            <div class="container" id="ContentPlaceHolder1_pnlDashboard">
                 <div class="row">                   
                   <p>You may update your email Id or mobile no from my profile link.</p>
                </div>
                <div class="row" id="text_deco">
                    <div class="col-md-4 col-sm-12">
                            <div class="serviceBox">
                                <i class="fa fa-user"></i>
                                <h4 class="title">My Profile</h4>
                                <p class="description">Click here to view/edit your Profile.</p>
                            </div>
                        
                    </div>
                    <div class="col-md-4 col-sm-12">
                        
                            <div class="serviceBox">
                                <i class="fa fa-user"></i>
                                <h4 class="title">CTPC Dashboard</h4>
                                <p class="description">Click here to go for Central Training & Placement Cell.</p>
                            </div>
                        
                    </div>
                    <div class="col-md-4 col-sm-12">
                        
                            <div class="serviceBox">
                                <i class="fa fa-bank"></i>
                                <h4 class="title">Account Details</h4>
                                <p class="description">Click here to go fill your Account details.</p>
                            </div>
                        
                    </div>
                    

                </div>
                <div class="row">
                    <div class="col-md-4 col-sm-12">
                        
                            <div class="serviceBox">
                                <i class="fa fa-user"></i>
                                <h4 class="title">CKN Dashboard</h4>
                                <p class="description">Click here to go for CKN Dashboard.</p>
                            </div>
                        
                    </div>
                    <div class="col-md-4 col-sm-12">
                        
                            <div class="serviceBox">
                                <i class="fa fa-key"></i>
                                <h4 class="title">Edit Password</h4>
                                <p class="description">Click here to edit your password.</p>
                            </div>
                       
                    </div>
                    <div class="col-md-4 col-sm-12">
                       
                            <div class="serviceBox">
                                <i class="fa fa-building"></i>
                                <h4 class="title">Revalution Dashboard</h4>
                                <p class="description">Click here to go for Revalution Dashboard.</p>
                            </div>
                     
                    </div>

                   
                </div>

                  
                <div class="row">
                 

                    <div class="col-md-4 col-sm-12">
                        
                            <div class="serviceBox">
                                <i class="fa fa-key"></i>
                                <h4 class="title">Pay Fee & Dues</h4>
                                <p class="description">Click here to Pay old dues.</p>
                            </div>
                       
                    </div>
               
                     
                     <div class="col-md-4 col-sm-12">
                        
                            <div class="serviceBox">
                                <i class="fa fa-dollar"></i>
                                <h4 class="title">Submit PG thesis-Fee (MMM)</h4>
                                <p class="description">Click here.</p>
                            </div>
                        
                    </div>
                   
                   <div class="col-md-4 col-sm-12">
                            <div class="serviceBox">
                                <i class="fa fa-key"></i>
                                <h4 class="title">Exam Dashboard</h4>
                                <p class="description">Click here.</p>
                            </div>
                        
                    </div>
                </div>
                <div class="row">
                   <div class="col-md-4 col-sm-12">
                        
                            <div class="serviceBox">
                                <i class="fa fa-list"></i>
                                <h4 class="title">Admit Card</h4>
                                <p class="description">Click here to print.</p>
                            </div>
                        
                    </div>
                  
                </div>
            </div>

        </div>
    
</div>

    </asp:Content>
