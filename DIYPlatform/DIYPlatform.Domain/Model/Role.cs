using System;
using System.Collections.Generic;

namespace DIYPlatform.Domain.Model;

public partial class Role : BaseEntity
{

    public string? Name { get; set; }
    

    public virtual ICollection<User> Users { get; set; } = new List<User>();
}
