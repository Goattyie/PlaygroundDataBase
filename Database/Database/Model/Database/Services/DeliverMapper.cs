﻿using Database.Model.Database.Tables;
using Microsoft.EntityFrameworkCore;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;

namespace Database.Model.Database.Services
{
    public class DeliverMapper : IMapper<Deliver>
    {
        public event Action<object> CreateEntityEvent;
        public void Create(Deliver obj)
        {
            using (var connection = new SqlModel())
            {
                try
                {
                    connection.Delivers.Add(obj);
                    connection.SaveChanges();
                    CreateEntityEvent?.Invoke(obj);
                    MessageBox.Show("Запись добавлена", "Уведомление", MessageBoxButton.OK, MessageBoxImage.Information);
                }
                catch
                {
                    MessageBox.Show("Запись не была добавлена", "Ошибка", MessageBoxButton.OK, MessageBoxImage.Error);
                }
            }
        }

        public void Create(Deliver[] obj)
        {
            throw new NotImplementedException();
        }

        public void Delete(Deliver obj)
        {
            using (var connection = new SqlModel())
            {
                connection.Delivers.Remove(obj);
                connection.SaveChanges();
            }
        }

        public void Delete(Deliver[] obj)
        {
            using (var connection = new SqlModel())
            {
                connection.Delivers.RemoveRange(obj);
                connection.SaveChanges();
            }
        }

        public IEnumerable<Deliver> GetAll()
        {
            var delivers = new List<Deliver>();
            using (var connection = new SqlModel())
            {
                delivers = connection.Delivers.ToList();
            }
            return delivers;
        }

        public Deliver GetElementById(int id)
        {
            throw new NotImplementedException();
        }

        public void Update(Deliver obj)
        {
            throw new NotImplementedException();
        }
    }
}