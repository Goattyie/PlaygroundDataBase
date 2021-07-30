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
    public class ProfileMapper : IMapper<Profile>
    {
        public event Action<object> CreateEntityEvent;
        public void Create(Profile obj)
        {
            using (var connection = new SqlModel())
            {
                try
                {
                    connection.Profiles.Add(obj);
                    connection.SaveChanges();
                    CreateEntityEvent?.Invoke(obj);
                    MessageBox.Show("Запись добавлена", "Уведомление", MessageBoxButton.OK, MessageBoxImage.Information);
                }
                catch
                {
                    MessageBox.Show("Запись уже существует", "Ошибка", MessageBoxButton.OK, MessageBoxImage.Error);
                }
            }
        }
        public void Delete(Profile[] obj)
        {
            using (var connection = new SqlModel())
            {
                connection.Profiles.RemoveRange(obj);
                connection.SaveChanges();
            }
        }
        public IEnumerable<Profile> GetAll()
        {
            var profile = new List<Profile>();
            using (var connection = new SqlModel())
            {
                profile = connection.Profiles.ToList();
            }
            return profile;
        }

        public async Task<IEnumerable<Profile>> GetAllAsync()
        {
            var profile = new List<Profile>();
            using (var connection = new SqlModel())
            {
                profile =await connection.Profiles.ToListAsync();
            }
            return profile;
        }

        public Profile GetElementByName(string name)
        {
            var profile = new Profile();
            using (var connection = new SqlModel())
            {
                profile = connection.Profiles.Where(p => p.Name == name).FirstOrDefault();
            }
            return profile;
        }
        public void Update(Profile obj)
        {
            throw new NotImplementedException();
        }
    }
}
