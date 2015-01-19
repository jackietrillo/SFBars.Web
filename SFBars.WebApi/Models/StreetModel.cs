using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace SFBars.Api.Models
{
	public class StreetModel
	{
		public StreetModel()
		{
			Bars = new List<BarModel>();
		}
		public int StreetId { get; set; }
		public string Name { get; set; }
		public string Descrip { get; set; }
		public decimal Latitude { get; set; }
		public decimal Longitude { get; set; }
		public string ImageUrl { get; set; }

		public List<BarModel> Bars { get; set; }
	}
}