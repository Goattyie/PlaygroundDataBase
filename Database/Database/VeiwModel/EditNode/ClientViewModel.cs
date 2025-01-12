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
    class ClientViewModel: BasePropertyChanged
    {
        private Client _client;
        private BaseCommand _addCommand;

        #region Поля
        public string Phone
        {
            get { return _client.Phone; }
            set
            {
                _client.Phone = value; 
                OnPropertyChanged(nameof(_client.Phone));
            }
        }

        public string Description
        {
            get { return _client.Description; }
            set
            {
                _client.Description = value; 
                OnPropertyChanged(nameof(_client.Description));
            }
        }

        #endregion
        public BaseCommand AddCommand
        {
            get { return _addCommand ??= new BaseCommand(obj =>
            {
                try
                {
                    Service.clientMapper.Create(_client);
                    _client.Id = 0;
                    Service.clientMapper.NotifyObserver();
                }
                catch
                {
                    MessageBox.Show("Ошибка! В записи есть ошибки либо она уже существует.", "Ошибка добавления", MessageBoxButton.OK, MessageBoxImage.Error);
                }
            }); }
        }
        public ClientViewModel()
        {
            _client = new Client();
        }
        public ClientViewModel(string phone):this()
        {
            _client.Phone = phone;
        }
    }
}
