<%@ Page Title="" Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true" CodeBehind="AddClient.aspx.cs" Inherits="WebApplication3.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
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

            

    <section id="content">

        <h2 style ="color: #999;">Add New Client</h2>
    <hr color ="#669D48" />

        <br />
        <table class="auto-style1">
            <tr>
                <td>
        <asp:TextBox ID="txtFirst" runat="server" placeholder="First Name"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
        <asp:TextBox ID="txtLast" runat="server" placeholder="Last Name"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
        <asp:TextBox ID="txtMobile" runat="server" placeholder="Mobile Number"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
        <asp:TextBox ID="txtEmail" runat="server" placeholder="Email Address"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
        <asp:TextBox ID="txtGender" runat="server" placeholder="Gender"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
        <asp:Button ID="Button1" runat="server" Text="Add Client" OnClick="Button1_Click" style="color: #fff;
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
            <tr>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
            </tr>
        </table>

    </section>
</asp:Content>
