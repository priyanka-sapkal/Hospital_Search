using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Xml;

namespace WpfApplication1
{
    class result_handler
    {
       result result1;
       MainWindow window;
       String name,disease,city,area;
       int age;
       double contact_no; 

        public result_handler(MainWindow window1)
        {
            this.window = window1;                                                       //
            this.name = window1.name_text.Text;                                          // getting values from main Form
            this.disease = window1.diseaseCombo.Text;                                    //
            this.city = window1.cityCombo.Text;                                          //
            this.area = window1.areaCombo.Text;                                          //

            this.age = Convert.ToInt32(window1.age_text.Text);                           //
            this.contact_no = Convert.ToDouble(window1.contact_text.Text);               //




            result1 = new result();
            result1.Show();
            
        }
     
        
        public void show()
        {
            ShowPersonalInfo();
             
          
        }


        public void  ShowPersonalInfo()
        {
             
             result1.welcome_name.Content = "WELCOME, "+window.name_text.Text.ToUpper();
             result1.welcome_contact.Content = window.contact_text.Text;
        
        }



    }
}
