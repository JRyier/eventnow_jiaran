<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="FAQCreate.aspx.cs" Inherits="eventnow_jiaran.FAQCreate" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style5 {
            width: 100%;
        }
        .auto-style6 {
            width: 119px;
        }
        .auto-style7 {
            width: 201px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style5">
        <tr>
            <td class="auto-style6">
                FAQ Category
            </td>
            <td class="auto-style7">
                <asp:DropDownList ID="ddl_FAQCategory" runat="server" Width="251px">
                    <asp:ListItem Value="Market"></asp:ListItem>
                    <asp:ListItem Value="Event"></asp:ListItem>
                    <asp:ListItem Value="Others"></asp:ListItem>
                </asp:DropDownList>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="rfv_FAQCategory" runat="server" ControlToValidate="ddl_FAQCategory" ErrorMessage="Please enter the FAQ type." ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style6">
                FAQ Question
            </td>
            <td class="auto-style7">
                <asp:TextBox ID="tb_FAQQuestion" runat="server" Width="293px"></asp:TextBox>
            </td>
            <td><asp:RequiredFieldValidator ID="rfv_FAQQuestion" runat="server" ControlToValidate="tb_FAQQuestion" ErrorMessage="Please enter the FAQ Question." ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style6">
                FAQ Answer
            </td>
            <td class="auto-style7">
                <asp:TextBox ID="tb_FAQAnswer" runat="server" Width="293px"></asp:TextBox>
            </td>
            <td><asp:RequiredFieldValidator ID="rfv_FAQAnswer" runat="server" ControlToValidate="tb_FAQAnswer" ErrorMessage="Please enter the FAQ Answer." ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style6">&nbsp;</td>
            <td class="auto-style7">
                <asp:Button ID="btn_FAQSubmit" runat="server" OnClick="btn_FAQSubmit_Click" Text="Submit" />
&nbsp;&nbsp;
                <asp:Button ID="btn_FAQBack" runat="server" Text="Back" />
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style6">&nbsp;</td>
            <td class="auto-style7">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>
