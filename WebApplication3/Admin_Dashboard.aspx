<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="Admin_Dashboard.aspx.cs" Inherits="WebApplication3.WebForm5" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <div class="container" id="form_outer">
	
        <div class="row" id="panel-heading">
            <h5 class="panel-title" style="background-color:#003300;">Main Dashboard</h5>
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
                        
                            <a href="Admin_stu_Reg.aspx" class="text-decoration-none"><div class="serviceBox">
                                <i class="fa fa-users">+</i>
                                <h4 class="title">Add/Edit Students</h4>
                                <p class="description">Click here to Add,Remove/Edit.</p>
                            </div></a>
                        
                    </div>
                    <div class="col-md-4 col-sm-12">
                        
                            <a href="createid.aspx" class="text-decoration-none"><div class="serviceBox">
                                <i class="fa fa-user">+</i>
                                <h4 class="title">Create/Remove ID</h4>
                                <p class="description">Click here to create/Remove User-id.</p>
                            </div></a>
                        
                    </div>

                </div>
                <div class="row">
                     <div class="col-md-4 col-sm-12">
                       
                            <div class="serviceBox">
                                <i class="fa fa-search"></i>
                                <a href="admin_stu_search.aspx" class="text-decoration-none"><h4 class="title">Search/Edit Student</h4></a>
                                <p class="description">Click here to Search Student</p>
                            </div>
                     
                    </div>
                    <div class="col-md-4 col-sm-12">
                        
                            <div class="serviceBox">
                                <i class="fa fa-bank"></i>
                                <a href="transaction.aspx" class="text-decoration-none"><h4 class="title">Account/Transactions Details</h4></a>
                                <p class="description">Click here toCheck all transaction/dues details.</p>
                            </div>
                        
                    </div>
                    <!--<div class="col-md-4 col-sm-12">
                        
                            <div class="serviceBox">
                                <i class="fa fa-Users"></i>
                                <h4 class="title">Faculty Details</h4>
                                <p class="description">Click here to Faculty Details.</p>
                            </div>
                       
                    </div>-->
                    <div class="col-md-4 col-sm-12">
                       
                            <div class="serviceBox">
                                <i class="fa fa-sign-out"></i>
                                <h4 class="title">Sign out</h4>
                                <p class="description">Click here to Sign out.</p>
                                
                            </div>
                     
                    </div>

                   
                </div>

           
               
                     
                     <!--<div class="col-md-4 col-sm-12">
                        
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
                  
                </div>-->
            </div>

        </div>
    
</div>

</asp:Content>
