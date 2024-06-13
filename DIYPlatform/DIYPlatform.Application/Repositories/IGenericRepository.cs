using DIYPlatform.Application.Common;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Linq.Expressions;
using System.Text;
using System.Threading.Tasks;
using DIYPlatform.Domain;
using DIYPlatform.Domain.Model;

namespace DIYPlatform.Application.Repositories
{
    public interface IGenericRepository<T> where T : BaseEntity
    {
        Task<List<T>> GetAllAsync(Expression<Func<T, bool>>? filter = null, string? includeProperties = null);
        Task<T?> GetAsync(Expression<Func<T, bool>>? filter = null, string? includeProperties = null);
        Task<T?> GetByIdAsync(int id);
        Task AddAsync(T entity);
        void Update(T entity);
        void UpdateRange(List<T> entities);
        void SoftRemove(T entity);
        Task AddRangeAsync(List<T> entities);
        void SoftRemoveRange(List<T> entities);
        Task DeleteAsync(T entity);

        Task DeleteRangeAsync(IEnumerable<T> entities);

        
    }
}
