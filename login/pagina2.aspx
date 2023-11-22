<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="pagina2.aspx.cs" Inherits="login.pagina2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            MENU PRINCIPAL<br />
            <br />
            Bienvenido a nuestra Sitio Web:&nbsp;
            <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
            <br />
            <br />
            <br />
            <br />
            <asp:GridView ID="GridView1" runat="server" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3" Height="197px" Width="296px">
                <FooterStyle BackColor="White" ForeColor="#000066" />
                <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
                <RowStyle ForeColor="#000066" />
                <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
                <SortedAscendingCellStyle BackColor="#F1F1F1" />
                <SortedAscendingHeaderStyle BackColor="#007DBB" />
                <SortedDescendingCellStyle BackColor="#CAC9C9" />
                <SortedDescendingHeaderStyle BackColor="#00547E" />
            </asp:GridView>
            <br />
            Codigo<br />
            <br />
            <asp:TextBox ID="tcodigo" runat="server" Height="20px" Width="224px"></asp:TextBox>
            <br />
            <br />
            <br />
            correo<br />
            <br />
            <asp:TextBox ID="tcorreo" runat="server" Width="222px"></asp:TextBox>
            <br />
            <br />
            <asp:Button ID="Button1" runat="server" Height="51px" OnClick="Button1_Click" Text="Consultar" Width="119px" />
            <br />
            <br />
        </div>
    </form>
</body>
</html>
