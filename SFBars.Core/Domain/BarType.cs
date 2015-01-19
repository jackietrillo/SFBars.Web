using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace SFBars.Core.Domain
{
	public class BarType
	{
		public BarType()
		{
			Bars = new List<BarType>();
		}
		public int BarTypeId { get; set; }
		public string Name { get; set; }

		public virtual ICollection<BarType> Bars { get; set; }
	}
}
