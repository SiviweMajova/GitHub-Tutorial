<%@ Page Title="" Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true" CodeBehind="AddInventory.aspx.cs" Inherits="WebApplication3.WebForm3" %>
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
            .auto-style2 {
                height: 68px;
            }
            .auto-style3 {
                height: 64px;
            }
            .auto-style4 {
                height: 69px;
            }
            .auto-style5 {
                height: 50px;
            }
            .auto-style6 {
                height: 53px;
            }
            .auto-style7 {
                width: 73%;
            }

            th, td {
    padding: 8px;
    text-align: left;
    border-bottom: 1px solid #222;
}
        </style>
    <section id="content">
        
        

        <table style="color:#222"; >
            <tr>
                <td class="auto-style2">
        
        <asp:TextBox ID="txtName" runat="server" placeholder="Product Name"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">
        <asp:TextBox ID="txtDate" runat="server" placeholder="Date Updated"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style4">
        <asp:TextBox ID="txtRetail" runat="server" placeholder="Reatil Price"></asp:TextBox>

                </td>
            </tr>
            <tr>
                <td class="auto-style5">
        <asp:TextBox ID="txtCategory" runat="server" placeholder="Product Category"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style6">
        <asp:TextBox ID="txtOnHand" runat="server" placeholder="Stock On Hand"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
            </tr>
        </table>

    </section>
        <asp:Button ID="Button1" runat="server" Text="Add Product" OnClick="Button1_Click" style="color: #fff;
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
    position: relative; top: -18px; left: 317px;" />
</asp:Content>
