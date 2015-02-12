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
		private IServiceFacade _service;

		public BarController(IServiceFacade barService)
		{
			_service = barService;		
		}

		public List<BarModel> Get()
		{
			IList<Bar> bars = _service.GetAllBars();
			List<BarModel> barModels = new List<BarModel>();

			foreach (Bar bar in bars)
			{
				var barModel = this.MapBarToBarModel(bar);
				barModels.Add(barModel);		
			}

			return barModels;
		}
	}
}

