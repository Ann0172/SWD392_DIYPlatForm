using System;
using System.Collections.Generic;

namespace DIYPlatform.Domain.Model;

public partial class Blog : BaseEntity
{
    public int? UserId { get; set; }

    public int? CategoryId { get; set; }

    public string? Title { get; set; }

    public string? ContentBlog { get; set; }

    public string? ImageUrl { get; set; }

    public string? Status { get; set; }

    public virtual Category? Category { get; set; }

    public virtual ICollection<Comment> Comments { get; set; } = new List<Comment>();

    public virtual ICollection<Payment> Payments { get; set; } = new List<Payment>();

    public virtual User? User { get; set; }
}
