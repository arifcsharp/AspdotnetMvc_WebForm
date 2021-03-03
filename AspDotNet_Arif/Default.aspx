<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="AspDotNet_Arif._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div class="jumbotron" style="background-image:url(Images/cover.jpg); color:white; background-repeat:no-repeat; background-size:cover; background-position:center;">
        <h1 style="text-shadow: 5px 5px 10px #333;">Bank Management System</h1>
        <h2 class="lead" style="text-shadow: 3px 3px 5px #333;">Admin Login : User Name : nazmul@gmail.com | Password : Nazmul@123%</h2>
        <p><a href="Management/AdminHome.aspx" class="btn btn-primary btn-lg">Admin Login &raquo;</a></p>
    </div>

    <br /> <br />

    <div class="row">
            <div class="col-md-4">
               <center>
                  <img width="170px" src="Images/card.jpg"/>
                  <h1>Cards</h1>
                  <p class="text-justify">Carry the bank in your wallet in a secured state. We offer Credit cards and Debit cards which give you the convenience of cash withdrawals, purchases and account transfers.</p>
               </center>
            </div>
            <div class="col-md-4">
               <center>
                  <img width="140px" src="Images/loan.jpg"/>
                  <h1>Loan</h1>
                  <p class="text-justify">Our loan advisors will provide you with one-on-one service every step of the way to make the experience of buying your dream home, your dream car and fulfilling your life aspirations as hassle-free as possible</p>
               </center>
            </div>
            <div class="col-md-4">
               <center>
                  <img width="170px" src="Images/account.jpg"/>
                  <h1>Your Accounts</h1><br />
                  <p class="text-justify">UCB Savings Account provides an opportunity of savings with a handsome savings rate. This is an easy to operate savings account to earn deposit on your small savings.</p>
               </center>
            </div>
         </div>


</asp:Content>
