using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Web.Http;
using Bars.Services;
using Bars.Api.Models;
using Bars.Core.Domain;
using Bars.WebApi.Models;

namespace Bars.Api.Controllers
{
	public class BarTypeController : BaseController
	{
		private IBarTypeService _service;
		private IBarService _barService;		

		public BarTypeController(IBarTypeService service, IBarService barService)
		{
			_service = service;
			_barService = barService;
		}

		public List<BarTypeModel> Get()
		{
			IList<BarType> barTypes = _service.GetAllBarTypes();

			List<BarTypeModel> barTypeModels = new List<BarTypeModel>();
			BarTypeModel barTypeModel;
			foreach (BarType barType in barTypes)
			{
				barTypeModel = new BarTypeModel { 
					BarTypeId = barType.BarTypeId,
					Name = barType.Name,				
				};
			
				barTypeModels.Add(barTypeModel);
			}

			return barTypeModels;			
		}

		public List<BarModel> Get(int id)
		{
			IList<Bar> bars = _barService.GetBarsByBarType(id);			
			List<BarModel> barModels = new List<BarModel>();		
			foreach(Bar bar in bars)
			{
				barModels.Add(this.MapBarToBarModel(bar));
			}
			return barModels;
		}	
	}
}

