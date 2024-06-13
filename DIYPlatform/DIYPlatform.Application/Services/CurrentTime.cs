using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using DIYPlatform.Application.Interfaces;

namespace DIYPlatform.Application.Services
{
    public class CurrentTime : ICurrentTime
    {
        public DateOnly GetCurrentTime() => DateOnly.FromDateTime(DateTime.UtcNow);
    }
}
