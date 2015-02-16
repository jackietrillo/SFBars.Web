using System;
using System.Collections.Generic;

namespace Bars.Api.Models
{
	public class MusicTypeModel
	{
		public MusicTypeModel()
		{
			Bars = new List<BarModel>();
		}

		public int MusicTypeId { get; set; }
		public string Name { get; set; }

		public List<BarModel> Bars { get; set; }
	}
}