﻿using Database.Model.Database.Services;
using Database.Model.Database.Tables;
using Database.Services;
using Database.VeiwModel.Commands;
using Database.View.EditNode;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;

namespace Database.VeiwModel.EditNode
{
    class SellViewModel:ValidatePropertyChanged, IDataErrorInfo
    {
        private Sell _sell;
        private BaseCommand _executeCommand;
        private BaseCommand _addClient;
        private Action _executeDelegate;
        private Availability _selectedAvailable;
        private Card _selectedCard;
        private Client _selectedClient;
        private bool _isCreate;
        private bool _isChangeClient;
        private string _phone;


        #region Errors
        protected override Dictionary<string, string> _errors { get; set; } = new Dictionary<string, string>()
        {
            ["SelectedAvailable"] = null,
            ["Count"] = null,
        };
        #endregion

        #region Списки BindingList
        public BindingList<Availability> AvailabilityList { get; set; }
        public BindingList<Card> CardList { get; set; }
        public BindingList<Client> ClientList { get; set; }
        #endregion
        #region Selected
        public Availability SelectedAvailable
        {
            get { return _selectedAvailable; }
            set
            {
                _selectedAvailable = value;
                OnPropertyChanged(nameof(SelectedAvailable));
                BuyCost = _selectedAvailable?.DeliverCost ?? 0;
                SellCost = _selectedAvailable?.SellCost ?? 0;
                Profit = Profit = (SellCost - BuyCost) * Count;
                _sell.ProductId = _selectedAvailable?.ProductId ?? 0;

                if (_selectedAvailable is null)
                    _errors["SelectedAvailable"] = "Товар из наличия не выбран";
                else _errors["SelectedAvailable"] = null;
                UpdateIsValid();
            }
        }
        public Card SelectedCard
        {
            get { return _selectedCard; }
            set
            {
                _selectedCard = value;
                OnPropertyChanged(nameof(SelectedCard));
                _sell.CardId = _selectedCard.Id;
            }
        }
        public Client SelectedClient
        {
            get { return _selectedClient; }
            set
            {
                _selectedClient = value;
                OnPropertyChanged(nameof(SelectedClient));
                _sell.ClientId = _selectedClient?.Id ?? null;
            }
        }
        #endregion
        #region Поля
        public bool IsChangeClient
        {
            get { return _isChangeClient; }
            set { _isChangeClient = value; OnPropertyChanged(nameof(IsChangeClient)); }
        }
        public string Phone
        {
            get { return _phone; }
            set
            {
                _phone = value;
                SelectedClient = ClientList.Where(c => c.Phone == value).FirstOrDefault();
                IsChangeClient = (SelectedClient == null) ? false : true;
            }
        }
        public DateTime SellDate
        {
            get { return _sell.SellDate; }
            set { _sell.SellDate = value; OnPropertyChanged(nameof(SellDate)); }
        }
        public double Profit
        {
            get { return _sell.Profit; }
            set { _sell.Profit = value; OnPropertyChanged(nameof(Profit)); }
        }
        public double SellCost
        {
            get { return _sell.SellCost; }
            set { _sell.SellCost = value; Profit = (_sell.SellCost - _sell.BuyCost) * _sell.Count; OnPropertyChanged(nameof(SellCost)); }

        }
        public double BuyCost
        {
            get { return _sell.BuyCost; }
            set { _sell.BuyCost = value; Profit = (_sell.SellCost - _sell.BuyCost) * _sell.Count; OnPropertyChanged(nameof(BuyCost)); }
        }
        
        public int Count
        {
            get { return _sell.Count; }
            set 
            { 
                _sell.Count = value;
                Profit = (_sell.SellCost - _sell.BuyCost) * _sell.Count;
                OnPropertyChanged(nameof(Count));
                
                if ((value < 1 || value > _selectedAvailable?.Count) && _isCreate)
                    _errors["Count"] = "Количество указано неверно";
                else _errors["Count"] = null;
                UpdateIsValid();

            }
        }

        public string Comment
        {
            get { return _sell.Comment; }
            set { _sell.Comment = value; OnPropertyChanged(nameof(Comment)); }
        }
    
        #endregion
        public BaseCommand AddClient
        {
            get 
            { 
                return _addClient ?? (_addClient = new BaseCommand(obj => 
                { 
                new EditClient(Phone).ShowDialog();  
                var clients = new ClientMapper().GetAll(); 
                ClientList.Clear();
                ClientList = new BindingList<Client>(clients.ToList());
                SelectedClient = ClientList.Where(c => c.Phone == Phone).FirstOrDefault();
                IsChangeClient = (SelectedClient == null) ? false : true;
                }));
            }
        }
        public BaseCommand ExecuteCommand
        {
            get { return _executeCommand ?? (_executeCommand = new BaseCommand(obj => { _executeDelegate?.Invoke(); })); }
        }


        public SellViewModel()
        {
            _sell = new Sell();
            _sell.SellDate = DateTime.Now;
            
            ClientList = new BindingList<Client>();

            var available = new AvailabilityMapper().GetAll();
            var cards = new CardMapper().GetAll();
            var clients = new ClientMapper().GetAll();

            AvailabilityList = new BindingList<Availability>(available.Where(x=>x.Count > 0).ToList());
            CardList = new BindingList<Card>(cards.OrderBy(x=>x.Name).ToList());
            ClientList = new BindingList<Client>(clients.ToList());

            _executeDelegate = new Action(Create);
            Count = 1;
            _isCreate = true;

            _errors["SelectedAvailable"] = "Товар из наличия не выбран";
            IsChangeClient = false;
            UpdateIsValid();
        }

        public SellViewModel(Sell sell)
        {
            _sell = sell;

            var available = new AvailabilityMapper().GetAll();
            var cards = new CardMapper().GetAll();
            var clients = new ClientMapper().GetAll();

            AvailabilityList = new BindingList<Availability>(available.ToList());
            CardList = new BindingList<Card>(cards.ToList());
            ClientList = new BindingList<Client>(clients.ToList());

            _executeDelegate = new Action(Update);
            _isCreate = false;

            _selectedAvailable = AvailabilityList.Where(a => a.ProductId == _sell.ProductId).FirstOrDefault();
            _selectedCard = CardList.Where(c => c.Id == _sell.CardId).FirstOrDefault();
            _selectedClient = ClientList.Where(c => c.Id == _sell.ClientId).FirstOrDefault();
            Phone = _selectedClient?.Phone;
            IsValid = true;
        }

        private void Create()
        {
            try
            {
                Service.sellMapper.CreateAndUpdateAvailability(_sell);
                Service.sellMapper.NotifyObserver();
            }
            catch
            {
                MessageBox.Show("Ошибка! В записи есть ошибки либо она уже существует.", "Ошибка добавления", MessageBoxButton.OK, MessageBoxImage.Error);
            }
        }

        private void Update()
        {
            try
            {
                _sell.Card = null;
                _sell.Client = null;
                _sell.Product = null;
                Service.sellMapper.Update(_sell);
                Service.sellMapper.NotifyObserver();
            }
            catch
            {
                MessageBox.Show("Ошибка! Запись нельзя обновить таким образом.", "Ошибка обновления", MessageBoxButton.OK, MessageBoxImage.Error);
            }
        }
    }
}
