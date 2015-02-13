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
	public class DistrictController : BaseController
	{
		public DistrictController() { }

		public List<DistrictModel> Get()
		{
			List<District> districts = ServiceFacade.GetAllDistricts();

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
	}
}

