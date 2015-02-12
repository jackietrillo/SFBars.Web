using System;
using System.Collections.Generic;

namespace Bars.Core.Domain
{
	public class Bar : BaseEntity
	{
		public Bar()
		{
			BarTypes = new List<BarTypeBar>();
		}

		public int BarId { get; set; }
		public int DistrictId { get; set; }
		public int? MusicTypeId { get; set; }
		public string Name { get; set; }
		public string Descrip { get; set; }
		public string Address { get; set; }
		public string Phone { get; set; }
		public string Hours { get; set; }
		public decimal Latitude { get; set; }
		public decimal Longitude { get; set; }
		public string WebsiteUrl { get; set; }
		public string CalendarUrl { get; set; }
		public string FacebookUrl { get; set; }
		public string YelpUrl { get; set; }
		public string ImageUrl { get; set; }

		public virtual District District { get; set; }
		public virtual MusicType MusicType { get; set; }
		public virtual ICollection<BarTypeBar> BarTypes { get; set; }
	}
}

