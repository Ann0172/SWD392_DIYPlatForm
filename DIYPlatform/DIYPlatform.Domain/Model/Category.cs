using System;
using System.Collections.Generic;

namespace DIYPlatform.Domain.Model;

public partial class Category : BaseEntity
{

    public string? CateogryName { get; set; }
    

    public virtual ICollection<Blog> Blogs { get; set; } = new List<Blog>();
}
