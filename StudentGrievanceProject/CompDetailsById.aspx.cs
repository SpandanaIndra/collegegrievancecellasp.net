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
    public partial class CompDetailsById : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["dbconnection"].ConnectionString);

        protected void Page_Load(object sender, EventArgs e)
        {
            Label1.Visible= false;
        }

        protected void btnStatus_Click(object sender, EventArgs e)
        {
            try
            {
                con.Open();

                SqlCommand cmd = new SqlCommand("select status from Complaints where ComplaintId=" + TextBox1.Text, con);
                object stat= cmd.ExecuteScalar();
                
                string status = (string)stat;
                if( stat==null )
                {

                    Label1.Visible = true;
                    Label1.Text = "Your Complaint Id is invalid...!!Please drop a complaint in complaint Box.";
                }
                if(status=="Solved")
                {
                    Label1.Visible = true;
                    Label1.Text = "Your Complaint is Solved..!";
                }
                else if (status == "Pending")
                {
                    Label1.Visible = true;
                    Label1.Text = "Your Complaint is Still in Pending..!!!";
                }

            }

            catch (Exception ex)
            {
                Response.Write("Error occured while connecting to server..!!!");

            }
        }
    }
}