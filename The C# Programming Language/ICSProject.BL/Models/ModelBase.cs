﻿using System;

namespace ICSProject.BL.Models
{
    public abstract record ModelBase : IModel
    {
        public Guid Id { get; set; }
    }
}