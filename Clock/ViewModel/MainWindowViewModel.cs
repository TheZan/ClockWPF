using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Runtime.CompilerServices;
using System.Text;
using System.Threading.Tasks;
using Clock.Annotations;
using Clock.Model;

namespace Clock.ViewModel
{
    class MainWindowViewModel : INotifyPropertyChanged
    {
        public MainWindowViewModel()
        {
            PrintClock();
            GetTime();
        }
        
        public List<ClockModel> HourParts { get; set; }
        public List<ClockModel> SecondParts { get; set; }

        private double angleHour;
        private double angleMin;
        private double angleSec;

        public double AngleHour
        {
            get { return angleHour; }
            set
            {
                angleHour = value;
                OnPropertyChanged("AngleHour");
            }
        }


        public double AngleMin
        {
            get { return angleMin; }
            set
            {
                angleMin = value;
                OnPropertyChanged("AngleMin");
            }
        }

        public double AngleSec
        {
            get { return angleSec; }
            set
            {
                angleSec = value;
                OnPropertyChanged("AngleSec");
            }
        }

        private string currentTime;

        public string CurrentTime
        {
            get => currentTime;
            set
            {
                currentTime = value;
                OnPropertyChanged("CurrentTime");
            }
        }

        private async void GetTime()
        {
            while (true)
            {
                await Task.Run(() =>
                {
                    CurrentTime = DateTime.Now.ToLongTimeString();
                    AngleHour = (DateTime.Now.Hour) * (360 / 12);
                    AngleMin = (DateTime.Now.Minute) * (360 / 60);
                    AngleSec = (DateTime.Now.Second) * (360 / 60);
                });
            }
        }

        private void PrintClock()
        {
            HourParts = new List<ClockModel>();
            for (int x = 0; x < 12; x++)
            {
                HourParts.Add(new ClockModel()
                {
                    Number = (x + 1).ToString(),
                    Angle = (x + 1) * (360 / 12),
                });
            }

            SecondParts = new List<ClockModel>();
            for (int x = 0; x < 60; x++)
            {
                SecondParts.Add(new ClockModel()
                {
                    Number = (x + 1).ToString(),
                    Angle = (x + 1) * (360 / 60),
                });
            }
        }

        public event PropertyChangedEventHandler PropertyChanged;

        [NotifyPropertyChangedInvocator]
        protected virtual void OnPropertyChanged([CallerMemberName] string propertyName = null)
        {
            PropertyChanged?.Invoke(this, new PropertyChangedEventArgs(propertyName));
        }
    }
}
