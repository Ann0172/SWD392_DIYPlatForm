using System;
using System.Collections.Generic;

namespace DIYPlatform.Domain.Model;

public partial class Comment : BaseEntity
{

    public int? ReplyCommentId { get; set; }

    public int? UserId { get; set; }

    public int? BlogId { get; set; }

    public string? ContentComment { get; set; }

    public int? Rate { get; set; }

    public DateOnly? Date { get; set; }

    public string? Status { get; set; }
    

    public virtual Blog? Blog { get; set; }

    public virtual ICollection<Comment> InverseReplyComment { get; set; } = new List<Comment>();

    public virtual Comment? ReplyComment { get; set; }
}
