using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Web.Http;
using SFBars.Services;
using SFBars.Api.Models;
using SFBars.Core.Domain;
using SFBars.WebApi.Models;
using AutoMapper;
namespace SFBars.Api.Controllers
{
	public class DistrictController : ApiController
	{
		private IDistrictService _service;
		private IBarService _barService;

		public DistrictController(IDistrictService service, IBarService barService)
		{
			_service = service;
			_barService = barService;

			Mapper.CreateMap<District, DistrictModel>();
			Mapper.CreateMap<Bar, BarModel>();
		}

		public List<DistrictModel> Get()
		{
			IQueryable<District> districts = _service.GetAllDistricts();

			return Mapper.Map(districts, new List<DistrictModel>());
		}

		public List<BarModel> Get(int id)
		{
			IQueryable<Bar> bars = _barService.GetBarsByDistrict(id);

			return Mapper.Map(bars, new List<BarModel>());
		}
	}
}

