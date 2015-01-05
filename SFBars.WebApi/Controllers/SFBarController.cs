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
	public class SFBarController : ApiController
	{
		private ISFBarService _SFBarService;

		public SFBarController(ISFBarService SFBarService)
		{
			_SFBarService = SFBarService;
		}

		public IEnumerable<SFBar> Get()
		{
			return _SFBarService.GetAll();
		}

		public SFBar Get(int id)
		{
			SFBar sfBar = _SFBarService.GetById(id);

			return sfBar;
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

