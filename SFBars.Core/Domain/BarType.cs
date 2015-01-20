using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace SFBars.Core.Domain
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
