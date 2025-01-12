﻿using Database.Model.Database.Services;
using Database.Model.Database.Tables;
using Database.Services;
using Database.VeiwModel.Commands;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;

namespace Database.VeiwModel.EditNode
{
    class DeliverViewModel: BasePropertyChanged
    {
        private Deliver _deliver;
        private BaseCommand _addCommand;

        #region Поля
        public string Name
        {
            get { return _deliver.Name; }
            set
            {
                _deliver.Name = value; OnPropertyChanged(nameof(_deliver.Name));
            }
        }
        #endregion
        public BaseCommand AddCommand
        {
            get { return _addCommand ??= new BaseCommand(obj =>
            {
                try
                {
                    Service.deliverMapper.Create(_deliver);
                    _deliver.Id = 0;
                    Service.deliverMapper.NotifyObserver();
                }
                catch
                {
                    MessageBox.Show("Ошибка! В записи есть ошибки либо она уже существует.", "Ошибка добавления", MessageBoxButton.OK, MessageBoxImage.Error);
                }
            }); }
        }
        public DeliverViewModel()
        {
            _deliver = new Deliver();
        }
    }
}
