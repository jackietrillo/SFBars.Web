using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using Bars.Core.Domain;

namespace Bars.Api.Models
{
	public class EventModel
	{
		public EventModel()
		{
			Bars = new List<BarModel>();
		}

		public int EventId { get; set; }

		public string Name { get; set; }

		public List<BarModel> Bars { get; set; }
	}
}