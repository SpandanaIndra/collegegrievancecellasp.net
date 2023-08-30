<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AdminHome.aspx.cs" Inherits="StudentGrievanceProject.AdminHome" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            font-size: large;
        }
        div{
            width:40%;
            height:60%;
            margin:auto;
        }
        .c1:hover{
            
            font-size:x-large;
            color:green;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <br />
            <br />
            <strong><span class="auto-style1">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:HyperLink CssClass="c1" ID="hlBackToLogin" runat="server" NavigateUrl="~/LoginForm.aspx">BackToLogin</asp:HyperLink>
            <br />
            <br />
            <br />
            </span>
            <asp:HyperLink CssClass="c1" ID="hlAddOrDeleteStud" runat="server" NavigateUrl="AddStudDetails.aspx">Add/Delete Student Details</asp:HyperLink>
            <br />
            <br />
            <asp:HyperLink CssClass="c1" ID="hlAllComplaints" runat="server" NavigateUrl="AllComplaints.aspx">Display AllComplaints</asp:HyperLink>
            </strong>
            <br />
            <br />
            <strong>
            <asp:HyperLink CssClass="c1" ID="hlPendingDetails" runat="server" NavigateUrl="~/PendingComplaintsSolve.aspx">Solve a Complaint</asp:HyperLink>
            <br />
            <br />
            <asp:HyperLink CssClass="c1" ID="hlSolved" runat="server" NavigateUrl="~/SolvedComplaints.aspx">Display Solved Complaints</asp:HyperLink>
            <br />
            <br />
            <asp:HyperLink CssClass="c1" ID="hlLogout" runat="server" NavigateUrl="~/LoginForm.aspx">Logout</asp:HyperLink>
            </strong>
            <br />
            <br />
            <br />
            <br />
        </div>
    </form>
</body>
</html>
