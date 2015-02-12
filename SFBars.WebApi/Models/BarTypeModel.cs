using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using Bars.Api.Models;

namespace Bars.WebApi.Models
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