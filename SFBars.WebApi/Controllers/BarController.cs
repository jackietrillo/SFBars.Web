using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Web.Http;
using Bars.Api.Models;
using Bars.Core.Domain;
using Bars.Services;

namespace Bars.Api.Controllers
{
	public class BarController : BaseController
	{
		public BarController() { }

		public List<BarModel> Get()
		{
			List<Bar> bars = ServiceFacade.GetAllBars();			

			List<BarModel> barModels = new List<BarModel>();

			foreach (Bar bar in bars)
			{
				var barModel = this.MapBarToBarModel(bar);

				barModel.BarTypes =  String.Join(",", bar.BarTypes.Select(t => t.BarTypeId.ToString()).ToList().ToArray());
				barModels.Add(barModel);		
			}

			return barModels;
		}
	}
}

