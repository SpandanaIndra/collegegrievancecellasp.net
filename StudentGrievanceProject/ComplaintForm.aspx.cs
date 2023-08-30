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
    public partial class ComplaintForm : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["dbconnection"].ConnectionString);

        protected void Page_Load(object sender, EventArgs e)
        {
            Label1.Visible= false;
        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            try
            {
                con.Open();
                string query = "proc_Insert_Complaint";

                SqlCommand cmd = new SqlCommand(query, con);
                cmd.CommandType = CommandType.StoredProcedure;
                if (DropDownList1.SelectedItem.Text != "DepartmentWise" || DropDownList1.SelectedItem.Text != "GeneralComplaint")
                {
                    DropDownList1.SelectedItem.Text = "GeneralComplaint";
                }
                cmd.Parameters.AddWithValue("@type", DropDownList1.SelectedItem.Text);


                cmd.Parameters.AddWithValue("@desc", txtareaDesc.InnerText);
                string id="";
                int result = cmd.ExecuteNonQuery();
                if (result == 1)
                {
                    Label1.Visible = true;
                    SqlCommand cmd1 = new SqlCommand("select *  from complaints order by ComplaintId desc", con);
                    SqlDataReader dr= cmd1.ExecuteReader();
                    if (dr.Read())
                    {

                        
                          id = dr["ComplaintId"].ToString();
                        Label1.Text="Your Complaint Registered Successfully..!!<h2> Complaint ID is "+id.ToString()+"</h2>";
                        txtareaDesc.InnerText = "";
                    }

                  

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
    }
}