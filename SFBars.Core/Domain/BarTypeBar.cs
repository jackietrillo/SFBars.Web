using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace SFBars.Core.Domain
{
	public class BarTypeBar
	{		
		public BarTypeBar()
		{
		}

		public int BarTypeBarId { get; set; }
		public int BarTypeId { get; set; }
		public int BarId { get; set; }
		
		public virtual Bar Bar { get; set; }
		public virtual BarType BarType { get; set; }
	}
}
