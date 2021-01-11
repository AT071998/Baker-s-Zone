<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPageUser.Master" AutoEventWireup="true" CodeBehind="Contactus.aspx.cs" Inherits="OnlineBakeryWebsite.Contactus" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
 
    <style type="text/css">
        .auto-style1 {
            width: 861px;
        }
        .auto-style3 {
            font-size: large;
            color: #0033CC;
            font-style: italic;
            font-weight: bold;
        }
    </style>
 
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

        <h1 style="background-color:#fd6d6d" class="auto-style1">
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:label runat="server" text="Contact Us" ForeColor="Black" Font-Bold="True" Font-Size="XX-Large"></asp:label>
    </h1>
    <div style="text-align:center">
    <asp:Image ID="Image1" runat="server" src="images/bakery.jpg" style="align-content:center; width:900px; height:300px;"/>
     </div><br />
    <asp:Label ID="Label6"  runat="server" Font-Size="Large"
        Text="For any Query Please Contact Us on this Email &amp; Contact Number"
        ForeColor="Black" CssClass="text-center"></asp:Label>
    <table class="table">
      
        <tr>
            
            <td class="auto-style1">
                <asp:Label ID="Label4" runat="server" Font-Bold="True"  Font-Size="Large" ForeColor="Black" Text="Call Us or Email Us"></asp:Label><br />
                 <asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Size="Large" ForeColor="#0033CC" Text="Email ID:bakerszone.gmail.com"></asp:Label><br />
                <asp:Label ID="Label3" runat="server" Font-Bold="True"  Font-Size="Large" ForeColor="#0033CC" Text="Contact us:+04329389345(Landline)"></asp:Label><br />
                <asp:Label ID="Label7" runat="server" Font-Bold="True"  Font-Size="Large" ForeColor="#0033CC" Text="Baker's Zone head :+91847839938"></asp:Label>
            </td>

            <td>
                <asp:Label ID="Label5" runat="server" Font-Size="Large" Font-Bold="True" Text="Visit Us at our Baker's Zone"></asp:Label>
                <asp:Label ID="Label1" runat="server" Font-Bold="True" Text="
                   &amp;nbsp;&lt;br /&gt;
                    Baker's Zone&lt;br /&gt;
                    Near Maruthi Temple,Dhobighat,&lt;br /&gt;
                    Karwar&lt;br /&gt;
                    Pincode:513223&lt;br /&gt;
                                                                      
                " ForeColor="Blue" Font-Size="Large"></asp:Label>

            </td>
           
        </tr>
         <tr>
            <td style="text-align:center;">
                <asp:Label ID="Label8" ForeColor="Blue" Font-Size="Large"  runat="server" Text="Label">Visit us Soon.</asp:Label> </td>
           
        </tr>
    </table>
    </asp:Content>