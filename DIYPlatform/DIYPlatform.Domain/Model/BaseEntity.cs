using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DIYPlatform.Domain.Model
{
    public abstract class BaseEntity
    {
        public int Id { get; set; }
        public DateOnly? CreatedDate { get; set; }

        public string? CreatedBy { get; set; }

        public DateOnly? ModifiedDate { get; set; }

        public string? ModifiedBy { get; set; }

        public DateOnly? DeletedDate { get; set; }

        public string? DeletedBy { get; set; }

        public bool IsDeleted { get; set; }
    }
}
