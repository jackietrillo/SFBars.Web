using System;
using System.Collections.Generic;

namespace Bars.Core.Domain
{
	public class @Event : BaseEntity
	{
		public int EventId { get; set; }
		public int? BarId { get; set; }
		public string Name { get; set; }
		public string Address { get; set; }
		public virtual Bar Bar { get; set; }
	}
}
