using System;
using System.Collections.Generic;

namespace DIYPlatform.Domain.Model;

public partial class Contact : BaseEntity
{

    public int? User1Id { get; set; }

    public int? User2Id { get; set; }

    public string? Status { get; set; }
    

    public virtual ICollection<MessageHistory> MessageHistories { get; set; } = new List<MessageHistory>();

    public virtual ICollection<Message> Messages { get; set; } = new List<Message>();

    public virtual User? User1 { get; set; }

    public virtual User? User2 { get; set; }
}
