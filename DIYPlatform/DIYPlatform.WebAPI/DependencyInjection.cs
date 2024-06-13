using DIYPlatform.Application.Interfaces;
using DIYPlatform.WebAPI.Middlewares;
using DIYPlatform.WebAPI.Services;
using System.Diagnostics;
using DIYPlatform.Application;
using DIYPlatform.Infrastructure;

namespace DIYPlatform.WebAPI
{
    public static class DependencyInjection
    {
        public static IServiceCollection AddWebAPIService(this IServiceCollection services)
        {
            services.AddControllers();
            services.AddEndpointsApiExplorer();
            services.AddSwaggerGen();
            services.AddHealthChecks();
            //services.AddSingleton<GlobalExceptionMiddleware>();
            services.AddScoped<IUnitOfWork, UnitOfWork>();
            services.AddScoped<IClaimsService, ClaimsService>();
            services.AddSingleton<PerformanceMiddleware>();
            services.AddSingleton<Stopwatch>();
            services.AddHttpContextAccessor();
            return services;
        }
    }
}
