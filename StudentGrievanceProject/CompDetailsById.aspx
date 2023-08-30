<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CompDetailsById.aspx.cs" Inherits="StudentGrievanceProject.CompDetailsById" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <br />
            <br />
            Status of Your Complaint...!!<br />
            <br />
            <br />
            <br />
            Enter Complaint ID&nbsp;
            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            <br />
            <br />
            <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="btnStatus" runat="server" OnClick="btnStatus_Click" Text="CheckStatus" />
            <br />
            <br />
            <br />
            <asp:Label ID="Label1" runat="server" Text="lblStatus"></asp:Label>
        </div>
    </form>
</body>
</html>
