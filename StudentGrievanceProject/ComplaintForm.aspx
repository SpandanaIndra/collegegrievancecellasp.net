<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ComplaintForm.aspx.cs" Inherits="StudentGrievanceProject.ComplaintForm" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            font-size: large;
        }
        h2{
            color:green;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <p class="auto-style1">
            <strong>You Con Share Your Complaints here..!!!</strong></p>
        <p class="auto-style1">
            &nbsp;</p>
        <p class="auto-style1">
            Type of Complaint&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:DropDownList ID="DropDownList1" runat="server">
                <asp:ListItem>SelectAnyOne</asp:ListItem>
                <asp:ListItem>DeptartmentWise</asp:ListItem>
                <asp:ListItem>GeneralComplaint</asp:ListItem>
            </asp:DropDownList>
        </p>
        <p class="auto-style1">
            Complaint Box&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <textarea id="txtareaDesc" cols="20" name="S1" runat="server" rows="2"></textarea></p>
        <p class="auto-style1">
            &nbsp;</p>
        <p class="auto-style1">
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="btnSubmit" runat="server" OnClick="btnSubmit_Click" Text="Submit" />
            &#39;</p>
        <p class="auto-style1">
            &nbsp;</p>
        <p class="auto-style1">
            <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
        </p>
        <p class="auto-style1">
            &nbsp;</p>
        <p class="auto-style1">
            &nbsp;</p>
        <p class="auto-style1">
            &nbsp;</p>
        <p class="auto-style1">
            &nbsp;</p>
    </form>
</body>
</html>
