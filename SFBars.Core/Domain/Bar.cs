﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace SFBars.Core.Domain
{
	public class Bar : BaseEntity
	{
		public Bar()
		{
			BarTypes = new List<BarType>();
		}
		public int BarId { get; set; }
		public int DistrictId { get; set; }
		public Nullable<int> StreetId { get; set; }
		public string Name { get; set; }
		public string Descrip { get; set; }
		public string Address { get; set; }
		public string Phone { get; set; }
		public string Hours { get; set; }
		public decimal Latitude { get; set; }
		public decimal Longitude { get; set; }
		public string WebsiteUrl { get; set; }
		public string FacebookUrl { get; set; }
		public string YelpUrl { get; set; }
		public string ImageUrl { get; set; }

		public virtual District District { get; set; }
		public virtual Street Street { get; set; }

		public virtual ICollection<BarType> BarTypes { get; set; }
	}
}
