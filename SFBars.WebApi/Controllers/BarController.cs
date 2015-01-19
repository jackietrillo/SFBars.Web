using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Web.Http;
using SFBars.Services;
using SFBars.Api.Models;
using SFBars.Core.Domain;

namespace SFBars.Api.Controllers
{
	public class BarController : ApiController
	{
		private IBarService _barService;

		public BarController(IBarService barService)
		{
			_barService = barService;
		}

		public IEnumerable<Bar> Get()
		{
			return _barService.GetAll();
		}

		public Bar Get(int id)
		{
			Bar bar = _barService.GetById(id);

			return bar;
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

