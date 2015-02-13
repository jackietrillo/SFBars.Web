using System;
using System.Collections.Generic;

namespace Bars.Core.Domain
{
	public class TopList : BaseEntity
	{
		public int TopListId { get; set; }
		public int BarId { get; set; }
		public byte Rank { get; set; }
		
		public virtual Bar Bar { get; set; }
	}
}
