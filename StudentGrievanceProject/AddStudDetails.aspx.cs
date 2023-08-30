using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace StudentGrievanceProject
{
    public partial class AddStudDetails : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["dbconnection"].ConnectionString);

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnAddStudent_Click(object sender, EventArgs e)
        {
            try
            {
                con.Open();
                string query = "proc_user_details_by_admin_insert";
                
                SqlCommand cmd = new SqlCommand(query, con);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@uno", txtStudentId.Text);
                cmd.Parameters.AddWithValue("@uname", txtStudentName.Text);
                cmd.Parameters.AddWithValue("@deptname", ddlDeptName.SelectedItem.Text);

                int result = cmd.ExecuteNonQuery();
                if (result==1)
                {
                     Response.Write("Insertion Success..!!");
                    //Response.Redirect("AdminHome.aspx");

                }
                else
                    Response.Write("Insertion Fails..!!!");
            }
            catch (Exception ex)
            {
                Response.Write("Error occured while connecting to server..!!!");

            }
            con.Close();

        }

        protected void btnDeleteStud_Click(object sender, EventArgs e)
        {
            try
            {

                con.Open();

                string query1 = "proc_user_details_by_admin_delete1";

                SqlCommand cm = new SqlCommand(query1, con);
                cm.CommandType = CommandType.StoredProcedure;
                cm.Parameters.AddWithValue("@uno", txtStudentId.Text);
                cm.Parameters.AddWithValue("@uname", txtStudentName.Text);
                cm.Parameters.AddWithValue("@deptname", ddlDeptName.SelectedItem.Text);

               


                int result = cm.ExecuteNonQuery();
                con.Close();
                if (result >0)
                {
                    con.Open();
                    string query = "proc_user_details_by_admin_delete";

                    SqlCommand cmd = new SqlCommand(query, con);
                    cmd.CommandType = CommandType.StoredProcedure;
                    cmd.Parameters.AddWithValue("@uno", txtStudentId.Text);
                    cmd.Parameters.AddWithValue("@uname", txtStudentName.Text);
                    cmd.Parameters.AddWithValue("@deptname", ddlDeptName.SelectedItem.Text);



                    int res = cmd.ExecuteNonQuery();
                    con.Close();
                    if (res > 0)
                    {
                        Response.Write("Deletion Success..!!");

                    }



                    //Response.Redirect("AdminHome.aspx");

                }
                else
                    Response.Write("Deletion Fails..!!!");
            }
            catch (Exception ex)
            {
                Response.Write("Error occured while connecting to server..!!!");

            }
            con.Close();

        }
    }
}