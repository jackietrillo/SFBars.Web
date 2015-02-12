using System;
using System.Collections.Generic;

namespace Bars.Core.Domain
{
	public class TopList : BaseEntity
	{
		public TopList()
		{
			//		
		}

		public int TopListId { get; set; }
		public int BarId { get; set; }
		public int Rank { get; set; }
		
		public virtual Bar Bar { get; set; }
	}
}
