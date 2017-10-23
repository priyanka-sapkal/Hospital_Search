using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Navigation;
using System.Windows.Shapes;
using MySql.Data.MySqlClient;

namespace WpfApplication1
{
    /// <summary>
    /// Interaction logic for MainWindow.xaml
    /// </summary>
    public partial class MainWindow : Window
    {
        public MySqlConnection conn;
        public MySqlDataReader reader;
        public MySqlCommand cmd;

        public string query = "";

       public String infoTable = "personal_info";
       public  String diseaseTable = "disease_tb";
       public String cityTable = "cityarea";


        public MainWindow()
        {
            
            
            InitializeComponent();
            
            areaCombo.IsEnabled = false;
          
            createDBConnection();
            loadDataOnForm();

            

        }

        public void createDBConnection()
        {
            String connectionString = @"server='localhost';database='hospital24x7';userid=<userid>;password=<password>;";
            conn = null;

            try
            {
                conn = new MySqlConnection(connectionString);
                conn.Open();
            }
            catch (MySqlException ex)
            {
                MessageBox.Show(ex.Message, "Error in connection");
            }
            finally
            {
                if (conn != null)
                {
                    conn.Close();
                }

            }

        }

        public void loadDataOnForm()
        {
           name_text.Focus();
            try
            {
                 query = "SELECT * FROM " + diseaseTable;
                cmd = new MySqlCommand(query, conn);
                conn.Open();
                reader = cmd.ExecuteReader();

                while (reader.Read())
                {
                    diseaseCombo.Items.Add(reader.GetString(0));     /////populate disease combo box

                }
               
                conn.Close();

                query = "SELECT DISTINCT(city) FROM " + cityTable;
                cmd = cmd = new MySqlCommand(query, conn);
                conn.Open();
                reader = cmd.ExecuteReader();

                while (reader.Read())
                {
                    cityCombo.Items.Add(reader.GetString(0));   // populate city combo box

                }
                conn.Close();

               

            }
            catch (MySqlException ex)
            {
                MessageBox.Show("Error");
            }

        }

        private void Button_Click_1(object sender, RoutedEventArgs e)
        {
            this.Close();
        }



        private void Button_Click_2(object sender, RoutedEventArgs e)
        {

           
            if (name_text.Text == "")
            {
                error_name.Visibility = Visibility.Visible;
              //  MessageBox.Show("Enter valid Name!", "Error!", MessageBoxButton.OK, MessageBoxImage.Error);
            }
            else
            {
                try
                {
                    double contact_no = Convert.ToDouble(contact_text.Text);  //raises an exception e1
                    if (contact_no == double.NaN || contact_text.Text.Length != 10)
                    {
                        error_contact.Visibility = Visibility.Visible;
                    }
                    else
                    {
                        try
                        {
                            int age = Convert.ToInt32(age_text.Text);    // raises Exception e2

                            if (age < 0 || age > 100)
                            {
                                error_age.Visibility = Visibility.Visible;
                            }

                            
                            else
                            {
                                
                                if (diseaseCombo.Text == "")
                                { error_disease.Visibility = Visibility.Visible; }
                                else
                                {
                                    if (cityCombo.Text == "")
                                    { error_City.Visibility = Visibility.Visible; }
                                    else
                                    {
                                        if (areaCombo.Text == "")
                                        { error_area.Visibility = Visibility.Visible; }
                                        else
                                        { 
                                            result_handler result = new result_handler(window1);   
                                            result.show();                                              // open result window and show result
                                        
                                        }
                                    }

                                }
                                
                            }
                            
                        }
                        catch (Exception e2)      // catch for age
                        {
                            error_age.Visibility = Visibility.Visible;
                        }

                    }
                }
                catch (Exception e1)    // catch for contact number conversion
                {
                    error_contact.Visibility = Visibility.Visible;
                }
                
               
            }
        }


       





   



        private void contact_text_TextChanged(object sender, TextChangedEventArgs e)
        {
            error_contact.Visibility = Visibility.Hidden;
        }

        private void name_text_TextChanged(object sender, TextChangedEventArgs e)
        {
            error_name.Visibility = Visibility.Hidden;
        }

        private void age_text_TextChanged(object sender, TextChangedEventArgs e)
        {
            error_age.Visibility = Visibility.Hidden;
        }

        private void cityCombo_SelectionChanged(object sender, SelectionChangedEventArgs e)
        {
            error_City.Visibility = Visibility.Hidden;
            areaCombo.IsEnabled = true;                 /// enable area combo
            areaCombo.Items.Clear();
            query = "SELECT area FROM " + cityTable +" WHERE city='"+cityCombo.SelectedItem.ToString()+"'";
            cmd = cmd = new MySqlCommand(query, conn);
            conn.Open();
            reader = cmd.ExecuteReader();

            while (reader.Read())
            {
                areaCombo.Items.Add(reader.GetString(0));   // populate city combo box

            }
            conn.Close();




        }

        private void diseaseCombo_SelectionChanged(object sender, SelectionChangedEventArgs e)
        {
            error_disease.Visibility = Visibility.Hidden;
        }

        private void areaCombo_SelectionChanged(object sender, SelectionChangedEventArgs e)
        {
             error_area.Visibility = Visibility.Hidden;
        }

        private void window1_MouseDown(object sender, MouseButtonEventArgs e)               ////// for dragging the window
        {
            if (e.ChangedButton == MouseButton.Left)                            
            { DragMove(); }
        }
        









    }
}
