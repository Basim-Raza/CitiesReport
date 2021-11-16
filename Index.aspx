<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Index.aspx.cs" Inherits="CitiesReport.WebForm1" %>

<%@ Register assembly="Microsoft.ReportViewer.WebForms, Version=11.0.0.0, Culture=neutral, PublicKeyToken=89845dcd8080cc91" namespace="Microsoft.Reporting.WebForms" tagprefix="rsweb" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Cities Report</title>
</head>
<body>
    <form id="form1" runat="server">
        <div>

            <asp:DropDownList ID="CountryList" runat="server">
                <asp:ListItem>PK</asp:ListItem>
                <asp:ListItem>IR</asp:ListItem>
                <asp:ListItem>KSA</asp:ListItem>
                <asp:ListItem>AUS</asp:ListItem>
                <asp:ListItem>CN</asp:ListItem>
            </asp:DropDownList>
            <asp:Button ID="Button1" runat="server" BackColor="#99CCFF" Font-Bold="True" ForeColor="Black" OnClick="Button1_Click" Text="Cities" />

        </div>
        <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
        <rsweb:ReportViewer ID="ReportViewer1" runat="server" Height="359px" Width="520px">
        </rsweb:ReportViewer>
    </form>
</body>
</html>
