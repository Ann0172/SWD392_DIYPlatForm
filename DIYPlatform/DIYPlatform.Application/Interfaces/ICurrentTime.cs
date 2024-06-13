using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DIYPlatform.Application.Interfaces
{
    public interface ICurrentTime
    {
        public DateOnly GetCurrentTime();
    }
}
