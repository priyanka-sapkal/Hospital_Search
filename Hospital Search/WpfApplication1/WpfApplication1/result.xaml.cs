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
using System.Windows.Shapes;

namespace WpfApplication1
{
    /// <summary>
    /// Interaction logic for result.xaml
    /// </summary>
    public partial class result : Window
    {
        public result()
        {
            InitializeComponent();
            
        }
        private void Button_Click_1(object sender, RoutedEventArgs e)
        {
            this.Close();
        }

        private void result1_MouseDown(object sender, MouseButtonEventArgs e)         ///////////for dragging the window
        {
            if (e.ChangedButton == MouseButton.Left)
            { DragMove(); }
        }

        
       
    }
}
