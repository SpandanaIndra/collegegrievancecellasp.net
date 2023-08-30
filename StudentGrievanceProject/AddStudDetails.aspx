<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AddStudDetails.aspx.cs" Inherits="StudentGrievanceProject.AddStudDetails" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            text-align: left;
        }
        .auto-style2 {
            font-size: large;
        }
        .auto-style3 {
            font-weight: bold;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="auto-style1">
            <strong><span class="auto-style2">Enter Details Below..<br />
            <br />
            </span>
            <br class="auto-style2" />
            </strong>
            <br />
            <strong>Enter User Id&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="txtStudentId" runat="server"></asp:TextBox>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <br />
            </strong>
            <br />
            <strong>Enter User Name&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="txtStudentName" runat="server"></asp:TextBox>
            <br />
            </strong>
            <br />
            <strong>Select Department Name&nbsp;&nbsp;&nbsp; <asp:DropDownList ID="ddlDeptName" runat="server">
                <asp:ListItem>SelectAnyOne</asp:ListItem>
                <asp:ListItem>CSE</asp:ListItem>
                <asp:ListItem>EEE</asp:ListItem>
                <asp:ListItem>Mechanical</asp:ListItem>
                <asp:ListItem>Civil</asp:ListItem>
                <asp:ListItem>ECE</asp:ListItem>
            </asp:DropDownList>
            <br />
            </strong>
            <br />
            <br />
            <br />
            <strong>&nbsp;&nbsp;
            <asp:Button ID="btnAddUser" runat="server" CssClass="auto-style3" OnClick="btnAddStudent_Click" Text="AddNewUser" />
&nbsp;&nbsp;&nbsp;
            <asp:Button ID="btnDeleteUser" runat="server" CssClass="auto-style3" OnClick="btnDeleteStud_Click" Text="DeleteExistingUser" />
            <br />
            <br />
            <br />
            <br />
            <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:HyperLink ID="hlLogout" runat="server" NavigateUrl="LoginForm.aspx">LogOut</asp:HyperLink>
            <br />
            </strong>
            <br />
        </div>
    </form>
</body>
</html>
