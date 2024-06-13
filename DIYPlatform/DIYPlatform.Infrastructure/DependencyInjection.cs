using DIYPlatform.Application.Interfaces;
using DIYPlatform.Application.Services;
using DIYPlatform.Application;
using Microsoft.Extensions.DependencyInjection;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using DIYPlatform.Infrastructure.Mapper;
using Mapster;
using Microsoft.EntityFrameworkCore;

namespace DIYPlatform.Infrastructure
{
    public static class DependencyInjection
    {
        public static IServiceCollection AddInfrastructuresService(this IServiceCollection services, string databaseConnection)
        {
            services.AddScoped<IUnitOfWork, UnitOfWork>();
            services.AddSingleton<ICurrentTime, CurrentTime>();
            services.AddDbContext<DiyplatFormDbContext>(options =>
            {
                options.UseSqlServer(databaseConnection);
            });
            services.AddMapsterConfigurations();
            return services;
        }
    }
}
