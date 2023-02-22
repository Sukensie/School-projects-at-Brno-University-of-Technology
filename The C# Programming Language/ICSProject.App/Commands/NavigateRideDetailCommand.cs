﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using ICSProject.App.Stores;

namespace ICSProject.App.Commands
{
    public class NavigateRideDetailCommand : CommandBase
    {
        private readonly NavigationStore _navigationStore;

        public NavigateRideDetailCommand(NavigationStore navigationStore)
        {
            _navigationStore = navigationStore;
        }
        public override void Execute(object parameter)
        {
            _navigationStore.CurrentViewModel = _navigationStore.RideDetailViewModel;
        }
    }
}
