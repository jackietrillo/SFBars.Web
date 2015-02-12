using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Web.Http;
using Bars.Services;
using Bars.Api.Models;
using Bars.Core.Domain;

namespace Bars.Api.Controllers
{
	public class BarController : BaseController
	{
		private IBarService _service;

		public BarController(IBarService barService)
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

		public BarModel Get(int barId)
		{
			Bar bar = _service.GetBarById(barId);

			return this.MapBarToBarModel(bar);
		}
	}
}

