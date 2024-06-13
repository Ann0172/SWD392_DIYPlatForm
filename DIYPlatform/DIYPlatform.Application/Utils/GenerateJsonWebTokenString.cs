using System;
using System.Collections.Generic;
using System.IdentityModel.Tokens.Jwt;
using System.Linq;
using System.Security.Claims;
using System.Text;
using System.Threading.Tasks;
using DIYPlatform.Application.Common;
using Microsoft.IdentityModel.Tokens;

namespace DIYPlatform.Application.Utils
{
    public static class GenerateJsonWebTokenString
    {
        /*public static string GenerateJsonWebToken(this Account user, AppConfiguration appSettingConfiguration, string secretKey, DateTime now)
        {
            var securityKey = new SymmetricSecurityKey(Encoding.UTF8.GetBytes(secretKey));
            var credentials = new SigningCredentials(securityKey, SecurityAlgorithms.HmacSha256);
            var claims = new[]
            {
                new Claim("Id", user.Id.ToString()),
                new Claim("Email" ,user.Email),
                new Claim("Name", user.Name),
                new Claim("Role" , user.RoleId.ToString()),
                new Claim(ClaimTypes.Role ,user.RoleId.ToString()),
            };
            var token = new JwtSecurityToken(
                issuer: appSettingConfiguration.JWTSection.Issuer,
                audience: appSettingConfiguration.JWTSection.Audience,
                claims: claims,
                expires: now.AddDays(2),
                signingCredentials: credentials);
            return new JwtSecurityTokenHandler().WriteToken(token);
        }*/
    }
}
