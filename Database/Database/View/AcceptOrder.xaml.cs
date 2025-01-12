﻿using Database.Model.Database.Services;
using Database.Model.Database.Tables;
using Database.VeiwModel;
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

namespace Database.View
{
    /// <summary>
    /// Логика взаимодействия для AcceptOrder.xaml
    /// </summary>
    public partial class AcceptOrder : Window
    {
        public AcceptOrder(OrderNode order)
        {
            InitializeComponent();
            DataContext = new AcceptProductViewModel(order);
        }

        private void Button_Click(object sender, RoutedEventArgs e)
        {
            this.Close();
        }
    }
}
