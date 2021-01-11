<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPageAdmin.Master" AutoEventWireup="true" CodeBehind="UserInfoAdmin.aspx.cs" Inherits="OnlineBakeryWebsite.UserInfoAdmin" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <link href="css/Custome.css" rel="stylesheet" />
   <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
    <div class ="container " >
            <div class ="form-horizontal ">
                <h2 style="color:black; font-size:30px; text-align:center;">Users Information</h2>
                 <asp:GridView ID="gdUsers" runat="server" AutoGenerateColumns="False" CssClass="table table-bordered">
                     <Columns>
                         <asp:BoundField DataField="UserId" HeaderText="User ID" />
                         <asp:ImageField DataImageUrlField="UserImage" DataImageUrlFormatString="UserImages/{0}" HeaderText="Profile Picture">
                             <ControlStyle Height="150px" Width="150px" />
                         </asp:ImageField>
                         <asp:BoundField DataField="Name" HeaderText="Name" />
                         <asp:BoundField DataField="MobileNo" HeaderText="Mobile No" />                  
                         <asp:BoundField DataField="Address" HeaderText="Address" />
                         <asp:BoundField DataField="City" HeaderText="City" />
                         <asp:BoundField DataField="Email" HeaderText="Email ID" />
                      
                         
                         
                      
                         
                     </Columns>
                    </asp:GridView>


                </div>
        </div>
   </asp:Content>
