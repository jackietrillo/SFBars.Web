using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace SFBars.Api.Models
{	
	public class SFBarModel
	{
		public int SFBarId { get; set; }
		public int SFStreetId { get; set; }
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
	}
}