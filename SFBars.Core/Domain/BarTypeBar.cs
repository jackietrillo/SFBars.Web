using System;
using System.Collections.Generic;

namespace Bars.Core.Domain
{
	public class BarTypeBar : BaseEntity
	{		
		public BarTypeBar()
		{
			//
		}

		public int BarTypeBarId { get; set; }
		public int BarTypeId { get; set; }
		public int BarId { get; set; }
		
		public virtual Bar Bar { get; set; }
		public virtual BarType BarType { get; set; }
	}
}
