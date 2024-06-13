using System;
using System.Collections.Generic;

namespace DIYPlatform.Domain.Model;

public partial class User : BaseEntity
{
    public string? Name { get; set; }

    public string? Email { get; set; }

    public string? Password { get; set; }

    public string? Address { get; set; }

    public string? PhoneNumber { get; set; }

    public string? Gender { get; set; }

    public string? ConfirmationToken { get; set; }

    public string? Status { get; set; }

    public string? AvatatUrl { get; set; }

    public int? RoleId { get; set; }

    public virtual ICollection<Blog> Blogs { get; set; } = new List<Blog>();

    public virtual ICollection<Contact> ContactUser1s { get; set; } = new List<Contact>();

    public virtual ICollection<Contact> ContactUser2s { get; set; } = new List<Contact>();

    public virtual ICollection<Payment> Payments { get; set; } = new List<Payment>();

    public virtual Role? Role { get; set; }
}
