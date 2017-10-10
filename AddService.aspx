<%@ Page Title="" Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true" CodeBehind="AddService.aspx.cs" Inherits="WebApplication3.WebForm4" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
   
    
     <section id="content">
         <style>
            input[type=text] {
                width: 300px;
                box-sizing: border-box;
                border: 2px solid #ccc;
                border-radius: 4px;
                font-size: 16px;
                padding: 12px 20px 12px 40px;
    -webkit-transition: width 0.4s ease-in-out;
    transition: width 0.4s ease-in-out;
            }

             section#content {
        margin-left: 280px;
        padding: 20px;
        background-color: #222;
    }
        
            th, td {
    padding: 8px;
    text-align: left;
    border-bottom: 1px solid #222;
}
        </style>

        <h2 style ="color: #999;">Add New Service</h2>
    <hr color ="#669D48" />

        <br />


        <table class="auto-style1">
            <tr>
                <td>
                    <asp:TextBox ID="txtName" placeholder="Name" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:TextBox ID="txtType" placeholder="Treatment Type" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:TextBox ID="txtAvail" placeholder="Availability for" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:TextBox ID="txtDuration" placeholder="Duration" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:TextBox ID="txtRPrice" placeholder="Retail Price" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:TextBox ID="txtSPrice" placeholder="Special Price" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>
                    <asp:Button ID="Button1" runat="server" Text="Add Service" OnClick="Button1_Click" style="color: #fff;
    align: right;
    font-size: 1em;
    outline: none;
    padding: .8em 2em;
    -webkit-transition: 0.5s all;
    -moz-transition: 0.5s all;
    transition: 0.5s all;
    border-radius: 5px;
    -webkit-appearance: none;
    background-color: #669D48;
    border: 1px solid #669D48;
    font-weight: 600;
    position: relative; top: 8px; left: 2px;" />
                </td>
            </tr>
        </table>

    </section>
</asp:Content>
