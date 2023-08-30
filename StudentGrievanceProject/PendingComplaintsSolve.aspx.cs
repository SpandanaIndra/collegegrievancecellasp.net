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
    public partial class PendingComplaints : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["dbconnection"].ConnectionString);
        void getdata()
        {
            try
            {


                SqlDataAdapter ad = new SqlDataAdapter("select * from Complaints where status='Pending'", con);
                DataSet ds = new DataSet();
                ad.Fill(ds);
                GridView1.DataSource = ds;
                GridView1.DataBind();
            }

            catch (Exception ex)
            {
                Response.Write("Error occured while connecting to server..!!!");

            }
        }

        protected void Page_Load(object sender, EventArgs e)
        {
           if(IsPostBack==false) 
            getdata();
        }

        protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName == "cmdsolve")
            {
                int i = Convert.ToInt32(e.CommandArgument);
                GridViewRow row = GridView1.Rows[i];
                Label l1 = (Label)row.FindControl("Label1");
                con.Open();
                string q = "proc_updateComplaint";
                SqlCommand cmd = new SqlCommand(q, con);
                cmd.CommandType = CommandType.StoredProcedure; ;
                cmd.Parameters.AddWithValue("@compid", l1.Text);
                cmd.ExecuteNonQuery();
                con.Close();
                getdata();

            }
        }
    }
}