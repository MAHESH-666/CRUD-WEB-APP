<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="crudNew.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
            height: 330px;
        }
        .auto-style2 {
            height: 69px;
        }
        .auto-style3 {
            width: 218px;
        }
        .auto-style4 {
            width: 218px;
            height: 63px;
        }
        .auto-style5 {
            height: 63px;
        }
        .auto-style6 {
            width: 218px;
            height: 40px;
        }
        .auto-style7 {
            height: 40px;
        }
        .auto-style8 {
            width: 218px;
            height: 44px;
        }
        .auto-style9 {
            height: 44px;
        }
        .auto-style10 {
            margin-bottom: 0px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
        </div>
        <table class="auto-style1">
            <tr>
                <td class="auto-style2" colspan="2" style="font-family: Cambria, Cochin, Georgia, Times, 'Times New Roman', serif; font-size: xx-large; font-weight: bold; font-style: normal; font-variant: normal; text-transform: capitalize; color: #FF0000">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; CRUD APPLICATION USING ASP.NET</td>
            </tr>
            <tr>
                <td class="auto-style3">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">
                    <asp:Label ID="Label3" runat="server" Text="PRODUCT NUMBER"></asp:Label>
                </td>
                <td>
                    &nbsp;<asp:TextBox ID="TextBox2" runat="server" Height="30px" Width="364px"></asp:TextBox>
                &nbsp;&nbsp;
                    <asp:Button ID="Button4" runat="server" BackColor="#FF3300" BorderColor="#000066" BorderStyle="Solid" ForeColor="White" Height="30px" OnClick="Button4_Click" Text="SEARCH" Width="82px" CssClass="auto-style10" />
                </td>
            </tr>
            <tr>
                <td class="auto-style3">
                    <asp:Label ID="Label2" runat="server" Text="CLIENT NAME"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="TextBox1" runat="server" Height="30px" Width="367px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">
                    <asp:Label ID="Label4" runat="server" Text="PRODUCT NAME"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="TextBox3" runat="server" Height="30px" Width="368px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style6">
                    <asp:Label ID="Label5" runat="server" Text="QUANTITY"></asp:Label>
                </td>
                <td class="auto-style7">
                    <asp:TextBox ID="TextBox4" runat="server" Height="30px" Width="367px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style8">
                    <asp:Label ID="Label6" runat="server" Text="DATE AND TIME"></asp:Label>
                </td>
                <td class="auto-style9">
                    <asp:TextBox ID="TextBox5" runat="server" Height="31px" Width="368px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style4">&nbsp;</td>
                <td class="auto-style5">
                    <asp:Button ID="Button1" runat="server" BackColor="#FF3300" BorderColor="#000066" BorderStyle="Solid" ForeColor="White" Height="44px" OnClick="Button1_Click" Text="INSERT" Width="123px" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="Button2" runat="server" BackColor="#FF3300" BorderColor="#000066" BorderStyle="Solid" ForeColor="White" Height="44px" OnClick="Button2_Click" Text="UPDATE" Width="123px" />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="Button3" runat="server" BackColor="#FF3300" BorderColor="#000066" BorderStyle="Solid" ForeColor="White" Height="44px" OnClick="Button3_Click" Text="DELETE" Width="123px" OnClientClick="return confirm('Are you Sure to delete');" />
                </td>
            </tr>
        </table>
        <asp:GridView ID="GridView1" runat="server" Height="262px" Width="1205px">
        </asp:GridView>
    </form>
</body>
</html>
