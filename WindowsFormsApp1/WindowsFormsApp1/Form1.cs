using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Data.SqlClient;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace WindowsFormsApp1
{
    public partial class Form1 : Form
    {
        int recordcounter = 0;
        double TotalScore = 0;
        string selectedAnswer = "";
        string CorrectAnswer = "";
        DateTime starttime ;
        DateTime finishtime;
        TimeSpan totaltimetaken;
        
        List<questionslist> ql = new List<questionslist>();
        //SqlDataReader reader; 
        public Form1()
        {
            InitializeComponent();
        }

        private void getQuestionsList()
        {
            try
            {
                SqlConnectionStringBuilder builder = new SqlConnectionStringBuilder();
                builder.DataSource = "SQLSERVER.database.windows.net";
                builder.UserID = "quizadmin";
                builder.Password = "PASSWORD";
                builder.InitialCatalog = "quizdb";

                using (SqlConnection connection = new SqlConnection(builder.ConnectionString))
                {


                    connection.Open();
                    StringBuilder sb = new StringBuilder();
                    sb.Append(" Select quizID, question, option1,  option2, option3, option4, correctanswer,  ROW_NUMBER()  OVER(ORDER BY option1 ASC) as Row_number  FROM (SELECT top 5 * FROM dbo.quiz where Area='devops' ORDER BY NEWID()) s order by Row_number ");

                    String sql = sb.ToString();

                    using (SqlCommand command = new SqlCommand(sql, connection))
                    {
                        SqlDataReader reader = command.ExecuteReader();
                        if (reader.HasRows)
                        {
                            while (reader.Read())
                            {
                                ql.Add(new questionslist
                                {
                                    quizID = reader.GetInt32(0),
                                    question = reader.GetString(1),
                                    option1 = reader.GetString(2),
                                    option2 = reader.GetString(3),
                                    option3 = reader.GetString(4),
                                    option4 = reader.GetString(5),
                                    correctanswer = reader.GetString(6),
                                    rownumber = reader.GetInt64(7)

                                });
                            }
                        }
                    }
                }
            }
            catch (SqlException e)
            {
                MessageBox.Show("Exception :- " + e.ToString());
            }
        }

        private void BtnStart_Click(object sender, EventArgs e)
        {
            
            recordcounter = 0;
            TotalScore = 0;
            CorrectAnswer = "";
            getQuestionsList();
            setPanel(recordcounter);
            panel1.Visible = true;
            starttime = DateTime.Now;

        }
        public void setPanel(int RecordCounter)
        {
            if (RecordCounter < ql.Count)
            {
                lblQuestionNumber.Text = "Question " + ql[RecordCounter].rownumber.ToString() + ": - " + ql[RecordCounter].question.ToString();
                radioButton1.Text = ql[RecordCounter].option1.ToString();
                radioButton2.Text = ql[RecordCounter].option2.ToString();
                radioButton3.Text = ql[RecordCounter].option3.ToString();
                radioButton4.Text = ql[RecordCounter].option4.ToString();
                CorrectAnswer = ql[RecordCounter].correctanswer.ToUpper();
                radioButton1.Checked = false;
                radioButton2.Checked = false;
                radioButton3.Checked = false;
                radioButton4.Checked = false;
            }
            else
            {
                btnNext.Enabled = false;
                //panel2.Visible = true;
                MessageBox.Show("Final Result : " + Math.Round(TotalScore, 0).ToString());
                saverecord();
                
                
                txtDisplayName.Focus();
                


            }

        }

        public void resetCounters()
        {
            recordcounter = 0;
            TotalScore = 0;
            selectedAnswer = "";
            CorrectAnswer = "";            
            panel1.Visible = false;
            txtDisplayName.Text = "";
            btnNext.Enabled = true;
            ql.Clear();
        }
        private void Form1_Load(object sender, EventArgs e)
        {

        }
        private void RadioButton1_Click(object sender, EventArgs e)
        {
            selectedAnswer = "A";

        }

        private void RadioButton2_Click(object sender, EventArgs e)
        {
            selectedAnswer = "B";
            
            
        }

        private void RadioButton3_Click(object sender, EventArgs e)
        {
            selectedAnswer = "C";
            
            
        }

        private void RadioButton4_Click(object sender, EventArgs e)
        {
            selectedAnswer = "D";
            
            
        }

        private void BtnNext_Click_1(object sender, EventArgs e)
        {
            if (CorrectAnswer == selectedAnswer.ToUpper())

            {
                TotalScore = TotalScore + 10;
            }
            else
            {
                Random random = new Random();
                TotalScore = TotalScore - random.Next(1, 5) * random.NextDouble();
            }

            recordcounter = recordcounter + 1;
            selectedAnswer = "";            
            
            setPanel(recordcounter);
           
           


        }

        private void saverecord()
        {
            finishtime = DateTime.Now;
            totaltimetaken = finishtime.Subtract(starttime);


            SqlConnectionStringBuilder builder = new SqlConnectionStringBuilder();
            builder.DataSource = "sudhirawquizserver.database.windows.net";
            builder.UserID = "quizadmin";
            builder.Password = "P@$$w0rd@123789";
            builder.InitialCatalog = "quizdb";
            string stmt = "INSERT INTO userreport(DisplayName, finalscore, starttime, finishtime, totaltimetaken ) VALUES(@DisplayName, @TotalScore, @starttime, @finishtime, @totaltimetaken)";

            using (SqlConnection connection = new SqlConnection(builder.ConnectionString))
            {
                connection.Open();
                SqlCommand cmd = new SqlCommand(stmt, connection);
                cmd.Parameters.Add("@DisplayName", SqlDbType.VarChar);
                cmd.Parameters.Add("@TotalScore", SqlDbType.Decimal);
                cmd.Parameters.Add("@starttime", SqlDbType.DateTime);
                cmd.Parameters.Add("@finishtime", SqlDbType.DateTime);
                cmd.Parameters.Add("@totaltimetaken", SqlDbType.Time);
                cmd.Parameters["@DisplayName"].Value = txtDisplayName.Text;
                cmd.Parameters["@TotalScore"].Value = Math.Round(TotalScore, 0);
                cmd.Parameters["@starttime"].Value = starttime;
                cmd.Parameters["@finishtime"].Value = finishtime;
                cmd.Parameters["@totaltimetaken"].Value = totaltimetaken;
                cmd.ExecuteNonQuery();
            }

            resetCounters();
        }
        
        
    }
}
