using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace SFBars.Core.Domain
{
	public class District
	{
		public District()
		{
			Bars = new List<Bar>();
		}

		public int DistrictId { get; set; }
		public string Name { get; set; }

		public virtual ICollection<Bar> Bars { get; set; }
	}
}
