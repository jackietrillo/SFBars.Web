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
	public class DistrictController : BaseController
	{
		private IDistrictService _service;
		private IBarService _barService;

		public DistrictController(IDistrictService service, IBarService barService)
		{
			_service = service;
			_barService = barService;		
		}

		public List<DistrictModel> Get()
		{
			IList<District> districts = _service.GetAllDistricts();

			List<DistrictModel> districtModels = new List<DistrictModel>();
			DistrictModel districtModel;

			foreach (District district in districts)
			{
				districtModel = new DistrictModel
				{
					DistrictId = district.DistrictId,
					Name = district.Name,
				};

				districtModels.Add(districtModel);
			}

			return districtModels;			
		}

		public List<BarModel> Get(int id)
		{
			IList<Bar> bars = _barService.GetBarsByDistrict(id);

			List<BarModel> barModels = new List<BarModel>();
			foreach (Bar bar in bars)
			{
				barModels.Add(this.MapBarToBarModel(bar));
			}
			return barModels;
		}
	}
}

