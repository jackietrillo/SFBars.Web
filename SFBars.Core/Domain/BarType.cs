using System;
using System.Collections.Generic;


namespace Bars.Core.Domain
{
	public class BarType : BaseEntity
	{
		public BarType()
		{
			Bars = new List<BarTypeBar>();
		}

		public int BarTypeId { get; set; }
		public string Name { get; set; }

		public virtual ICollection<BarTypeBar> Bars { get; set; }
	}
}
