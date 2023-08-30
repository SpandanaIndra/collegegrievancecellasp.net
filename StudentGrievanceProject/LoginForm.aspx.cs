using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace StudentGrievanceProject
{
    public partial class LoginForm : System.Web.UI.Page
    {
        SqlConnection con=new SqlConnection(ConfigurationManager.ConnectionStrings["dbconnection"].ConnectionString);
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        void CheckUser()
        {

        }

        protected void btn_Login_Click(object sender, EventArgs e)
        {

            try
            {
                if (txtUId.Text != "" && txtPwd.Text != "")
                {
                    if (ddlLoginAs.SelectedItem.Text == "Admin"|| ddlLoginAs.SelectedItem.Text == "Student" || ddlLoginAs.SelectedItem.Text == "HOD" )
                    {
                        con.Open();
                        string desig = ddlLoginAs.SelectedItem.Text;
                        string query = "";
                        if (desig == "Admin")
                        {
                            query = "proc_amindetails";
                        }
                        if (ddlLoginAs.Text == "Student" || desig == "HOD")
                        {
                            query = "proc_amindetails_verify";
                        }
                        SqlCommand cmd = new SqlCommand(query, con);
                        cmd.CommandType = CommandType.StoredProcedure;
                        cmd.Parameters.AddWithValue("@uid", txtUId.Text);
                        cmd.Parameters.AddWithValue("@pwd", txtPwd.Text);
                        cmd.Parameters.AddWithValue("@desig", ddlLoginAs.SelectedItem.Text);


                        SqlDataReader rdr = cmd.ExecuteReader();

                        if (rdr.Read())
                        {
                            txtPwd.Text=txtUId.Text="";
                            ddlLoginAs.SelectedIndex=0;

                            if (desig == "Admin")
                                Response.Redirect("AdminHome.aspx");
                            else if (desig == "Student")
                                Response.Redirect("StudentHome.aspx");
                            else if (desig == "HOD")
                                Response.Redirect("HODHome.aspx");

                        }
                        else
                            Result.Text = "<h2>Invalid Credentials..!!!</h2>";
                    }
                    else
                    {
                        string message = "Please Select Designation..!!";
                        string script = $"<script>alert('{message}');</script>";
                        ClientScript.RegisterStartupScript(this.GetType(), message, script);


                    }
                }
                else
                {
                    string message = "User id and password must..Please dont left blank";
                    string script = $"<script>alert('{message}');</script>";
                    ClientScript.RegisterStartupScript(this.GetType(), message, script);


                }
            }
            catch(Exception ex)
            {
                Result.Text="PLease Provide Valid Details...!!Try Again With Valid Details";

            }

        }
    }
}