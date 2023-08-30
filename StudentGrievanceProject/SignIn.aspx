<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SignIn.aspx.cs" Inherits="StudentGrievanceProject.SignIn" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <script>


        function validate() {
            debugger;
            if (document.getElementById("txtStudID").value == "") {
                alert("Id must not be blank");
                document.getElementById("txtStudID").focus();
                return false;
            }
            if (document.getElementById("txtStudName").value == "") {
                alert("Name must not be blank");
                document.getElementById("txtStudName").focus();
                return false;
            }
            if (document.getElementById("txtPwd").value == "") {
                alert("Password should Not be empty");
                document.getElementById("txtPwd").focus();
                return false;
            }
        }

    </script>
    


    <style type="text/css">
        .auto-style1 {
            text-align: center;
            
        }
        .auto-style2 {
            font-size: large;
        }
        .auto-style3 {
            width: 50%;
            margin:auto;
        }
        .auto-style4 {
            width: 250px;
        }
        .auto-style5 {
            font-weight: bold;
        }
        h2{
            color:red;
            margin-top:50px;
            margin-left:180px;
        }
         body{
            background-image:url("/Images/collegeBg.jpg");
             
     
background-repeat:no-repeat;
background-attachment:fixed;
background-size:100% 100%;


        }
        
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="auto-style1">
            <div class="auto-style1">
            <br />
            <br />
            <strong><span class="auto-style2">Please SignUp Here..!</span><br class="auto-style2" />
            </strong>
            <br />
            <br />
            <br />
            </div>
            <table class="auto-style3">
                <tr>
                    <td class="auto-style4"><strong>User ID</strong></td>
                    <td>
                        <asp:TextBox ID="txtStudID" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style4"><strong></strong></td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style4"><strong>User Name</strong></td>
                    <td>
                        <asp:TextBox ID="txtStudName" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style4"><strong></strong></td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style4"><strong>Password</strong></td>
                    <td><strong>
                        <asp:TextBox ID="txtPwd" TextMode="Password" runat="server"></asp:TextBox>
                        </strong></td>
                </tr>
                <tr>
                    <td class="auto-style4">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style4"><strong>Department</strong></td>
                    <td>
                        <asp:DropDownList ID="ddlDeptName" runat="server">
                            <asp:ListItem>SelectAnyOne</asp:ListItem>
                            <asp:ListItem>CSE</asp:ListItem>
                            <asp:ListItem>ECE</asp:ListItem>
                            <asp:ListItem>Civil</asp:ListItem>
                            <asp:ListItem>Mechanical</asp:ListItem>
                            <asp:ListItem>EEE</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style4"><strong></strong></td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style4"><strong>Phone Number</strong></td>
                    <td>
                        <asp:TextBox ID="txtPhoneNum" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style4"><strong></strong></td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style4"><strong>Email ID</strong></td>
                    <td>
                        <asp:TextBox ID="txtEmail" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style4">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style4"><strong>Designation</strong></td>
                    <td><strong>
                        <asp:DropDownList ID="ddlSignIn" runat="server">
                            <asp:ListItem>SelectAnyOne</asp:ListItem>
                            <asp:ListItem>HOD</asp:ListItem>
                            <asp:ListItem>Student</asp:ListItem>
                        </asp:DropDownList>
                        </strong></td>
                </tr>
            </table>
            <br />
            <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <strong>
            <asp:Button ID="btnSignIn" runat="server" CssClass="auto-style5" OnClick="btnSignIn_Click" Text="Sign Up" OnClientClick="return validate()" />
            </strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <strong>
            <asp:HyperLink ID="hlLogin" runat="server" NavigateUrl="LoginForm.aspx">Login</asp:HyperLink>
            </strong>
        </div>
    </form>
</body>
</html>
