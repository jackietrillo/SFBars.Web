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
		private IServiceFacade _service;

		public DistrictController(IServiceFacade barService)
		{
			_service = barService;		
		}

		public List<EventModel> Get()
		{
			List<Event> events = _service.GetAllEvents();

			List<EventModel> eventModels = new List<EventModel>();
			EventModel eventModel;

			foreach (Event @event in events)
			{
				eventModel = new EventModel
				{
					EventId = @event.EventId,
					Name = @event.Name,
				};

				eventModels.Add(eventModel);
			}

			return eventModels;			
		}
	}
}

