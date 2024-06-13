using System;
using System.Collections.Generic;

namespace DIYPlatform.Domain.Model;

public partial class Payment : BaseEntity
{

    public int? UserId { get; set; }

    public int? BlogId { get; set; }

    public double? Amount { get; set; }

    public string? PaymentMethod { get; set; }

    public string? Currency { get; set; }

    public string? Status { get; set; }
    

    public virtual Blog? Blog { get; set; }

    public virtual User? User { get; set; }
}
