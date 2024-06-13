using Mapster;
using Microsoft.Extensions.DependencyInjection;

namespace DIYPlatform.Infrastructure.Mapper;

public static class MapperConfigurationProfile
{
    public static IServiceCollection AddMapsterConfigurations( this IServiceCollection services)
    {
        services.AddMapster();
        return services;
    }
}