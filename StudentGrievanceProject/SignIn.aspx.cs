using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;

namespace StudentGrievanceProject
{
    public partial class SignIn : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["dbconnection"].ConnectionString);

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSignIn_Click(object sender, EventArgs e)
        {
            try
            {
                if (txtStudID.Text != "" && txtStudName.Text != "" && txtEmail.Text != "" && txtPhoneNum.Text != "" && txtPwd.Text != "")
                {
                    if (txtPhoneNum.Text.Length == 10)
                    {
                        con.Open();
                        string query = "proc_user_details_insertion";

                        SqlCommand cmd = new SqlCommand(query, con);
                        cmd.CommandType = CommandType.StoredProcedure;
                        cmd.Parameters.AddWithValue("@uno", txtStudID.Text);
                        cmd.Parameters.AddWithValue("@uname", txtStudName.Text);
                        cmd.Parameters.AddWithValue("@pwd", txtPwd.Text);

                        cmd.Parameters.AddWithValue("@deptname", ddlDeptName.SelectedItem.Text);
                        cmd.Parameters.AddWithValue("@phnum", txtPhoneNum.Text);
                        cmd.Parameters.AddWithValue("@email", txtEmail.Text);
                        cmd.Parameters.AddWithValue("@desig", ddlSignIn.SelectedItem.Text);

                        int result = cmd.ExecuteNonQuery();
                        if (result == 1)
                        {
                            Response.Write("Insertion Success..!!");
                            //Response.Redirect("AdminHome.aspx");

                        }
                        else
                            Response.Write("Insertion Fails..!!!");

                        txtStudID.Text = txtStudName.Text = txtPwd.Text = txtPhoneNum.Text = txtEmail.Text = "";
                        ddlDeptName.SelectedItem.Selected = false;
                        ddlSignIn.SelectedItem.Selected = false;
                    }
                    else
                    {
                        string message = "Enter valid mobile number";
                        string script = $"<script>alert('{message}');</script>";
                        ClientScript.RegisterStartupScript(this.GetType(), message, script);
                    }
                }
                else
                {
                    string message = "All Fields are mandatory..!!Please Provide to Create a new account";
                    string script = $"<script>alert('{message}');</script>";
                    ClientScript.RegisterStartupScript(this.GetType(), message, script);
                }

            }

            catch (Exception ex)
            {
                Response.Write("<h2>You are not registered..please contact admin to update your details!!!</h2>");

            }
            con.Close();
        }
    }
}