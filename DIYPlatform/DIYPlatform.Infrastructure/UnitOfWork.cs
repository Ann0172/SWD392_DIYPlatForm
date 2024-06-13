using DIYPlatform.Application;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DIYPlatform.Infrastructure
{
    public class UnitOfWork : IUnitOfWork
    {
        private readonly DiyplatFormDbContext _dbContext;
       

        public UnitOfWork(DiyplatFormDbContext dbContext)
        {
            _dbContext = dbContext;
        }

        public async Task<int> SaveChangeAsync()
        {
            return await _dbContext.SaveChangesAsync();
        }
    }
}
