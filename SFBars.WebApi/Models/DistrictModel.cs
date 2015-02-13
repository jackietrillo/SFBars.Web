using System;
using System.Collections.Generic;

namespace Bars.Api.Models
{
	public class DistrictModel
	{
		public DistrictModel()
		{
			Bars = new List<BarModel>();
		}

		public int DistrictId { get; set; }
		public string Name { get; set; }

		public List<BarModel> Bars { get; set; }
	}
}