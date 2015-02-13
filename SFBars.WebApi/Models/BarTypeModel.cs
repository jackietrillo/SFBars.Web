using System;
using System.Collections.Generic;

namespace Bars.Api.Models
{
	public class BarTypeModel
	{
		public BarTypeModel()
		{
			Bars = new List<BarModel>();
		}

		public int BarTypeId { get; set; }
		public string Name { get; set; }

		public List<BarModel> Bars { get; set; }
	}
}