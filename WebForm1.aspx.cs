using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace crudNew
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                GetEmployeeList();
            }

        }

        SqlConnection connection = new SqlConnection("Data Source=MAHESH\\SQLEXPRESS;Initial Catalog=cru;Integrated Security=True");
        protected void Button1_Click(object sender, EventArgs e)

        {
            string ename = TextBox1.Text;
            int pno = Convert.ToInt32(TextBox2.Text);
            string pname = TextBox3.Text;
            int qty = Convert.ToInt32(TextBox4.Text);
            
            connection.Open();
            SqlCommand command = new SqlCommand("Insert into crudtable values ('" + ename + "','" + pno + "','" + pname + "','" + qty + "')", connection);
            command.ExecuteNonQuery();
            connection.Close();
            ScriptManager.RegisterStartupScript(this, this.GetType(), "script", "alert('added sucessfully');", true);

            GetEmployeeList();

        }
        void GetEmployeeList()
        {
            SqlCommand command = new SqlCommand("select * from crudtable", connection);
            SqlDataAdapter sd = new SqlDataAdapter(command);
            DataTable dt = new DataTable();
            sd.Fill(dt);
            GridView1.DataSource = dt;
            GridView1.DataBind();

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            string ename = TextBox1.Text;
            int pno = Convert.ToInt32(TextBox2.Text);
            string pname = TextBox3.Text;
            int qty = Convert.ToInt32(TextBox4.Text);
            
            connection.Open();
            SqlCommand command = new SqlCommand("Update crudtable set cname= '" + ename + "', pname='" + pname + "', quantity='" + qty + "' where pnumber='"+ pno +"'", connection);
            command.ExecuteNonQuery();
            connection.Close();
            ScriptManager.RegisterStartupScript(this, this.GetType(), "script", "alert('updated sucessfully');", true);

            GetEmployeeList();

        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            int pno = Convert.ToInt32(TextBox2.Text);
            connection.Open();
            SqlCommand command = new SqlCommand("Delete crudtable where pnumber = '" + pno + "'", connection);
            command.ExecuteNonQuery();
            connection.Close();
            ScriptManager.RegisterStartupScript(this, this.GetType(), "script", "alert('deleted sucessfully');", true);
            GetEmployeeList();
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            int pno = int.Parse(TextBox2.Text);
            SqlCommand command = new SqlCommand("select * from crudtable where pnumber='"+pno+"'", connection);
            SqlDataAdapter sd = new SqlDataAdapter(command);
            DataTable dt = new DataTable();
            sd.Fill(dt);
            GridView1.DataSource = dt;
            GridView1.DataBind();
        }
    }

}