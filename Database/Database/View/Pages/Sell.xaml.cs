﻿using Database.VeiwModel.Pages;
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

namespace Database.View.Pages.Tables
{
    /// <summary>
    /// Логика взаимодействия для Sell.xaml
    /// </summary>
    public partial class Sell : Page
    {
        public Sell()
        {
            InitializeComponent();
            DataContext = new PageSellViewModel();
        }
    }
}
