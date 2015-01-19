using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace SFBars.Core.Domain
{
	public class Street : BaseEntity
	{
		public Street()
		{
			Bars = new List<Bar>();
		}

		public int StreetId { get; set; }
		public string Name { get; set; }
		public string Descrip { get; set; }
		public decimal Latitude { get; set; }
		public decimal Longitude { get; set; }
		public string ImageUrl { get; set; }
				
		public virtual ICollection<Bar> Bars  { get; set; }
		
	}
}
