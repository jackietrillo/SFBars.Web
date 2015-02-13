using System;
using System.Collections.Generic;

namespace Bars.Api.Models
{
	public class TopListModel
	{
		public TopListModel() { }

		public int TopListId { get; set; }
		public string Name { get; set; }
		public int Rank { get; set; }
		public int BarId { get; set; }
	}
}