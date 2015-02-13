using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Bars.Core.Domain
{
    public class BaseEntity
    {
		public int LastUserId { get; set; }
		public DateTime? LastUpdate { get; set; }
		public DateTime? CreateDate { get; set; }
		public int StatusFlag { get; set; }
    }
}
