using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Web.Http;
using SFBars.Services;
using SFBars.Api.Models;
using SFBars.Core.Domain;
using AutoMapper;

namespace SFBars.Api.Controllers
{
	public class BarController : ApiController
	{
		private IBarService _service;

		public BarController(IBarService barService)
		{
			_service = barService;

			Mapper.CreateMap<Bar, BarModel>();
		}

		public List<BarModel> Get()
		{
			IQueryable<Bar> bars = _service.GetAllBars();

			return Mapper.Map(bars, new List<BarModel>());
		}

		public BarModel Get(int barId)
		{
			Bar bar = _service.GetBarById(barId);
			
			return Mapper.Map(bar, new BarModel());
		}


		// POST api/values
		public void Post([FromBody]string value)
		{
		}

		// PUT api/values/5
		public void Put(int id, [FromBody]string value)
		{
		}

		// DELETE api/values/5
		public void Delete(int id)
		{
		}

	}
}

