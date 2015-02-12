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
	public class PartyController : BaseController
	{
		private IServiceFacade _service;

		public PartyController(IServiceFacade barService)
		{
			_service = barService;
		}

	
	}
}

