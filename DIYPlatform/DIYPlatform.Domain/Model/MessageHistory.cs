using System;
using System.Collections.Generic;

namespace DIYPlatform.Domain.Model;

public partial class MessageHistory : BaseEntity
{

    public int? ContactId { get; set; }

    public string? ContentMessage { get; set; }

    public string? ImageUrl { get; set; }

    public DateOnly? Date { get; set; }

    public string? Status { get; set; }
    

    public virtual Contact? Contact { get; set; }
}
