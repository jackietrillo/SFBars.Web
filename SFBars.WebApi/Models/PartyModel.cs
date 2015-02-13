using System;
using System.Collections.Generic;

namespace Bars.Api.Models
{
	public class PartyModel
	{
		public PartyModel() { }

		public int PartyId { get; set; }
		public string Name { get; set; }
		public string Address { get; set; }
		public int? BarId { get; set; }
	}
}