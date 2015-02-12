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
	public class EventController : BaseController
	{
		private IServiceFacade _service;

		public EventController(IServiceFacade barService)
		{
			_service = barService;		
		}

		public List<EventModel> Get()
		{
			IList<Event> Events = _service.GetAllEvents();

			List<EventModel> EventModels = new List<EventModel>();
			EventModel EventModel;

			foreach (Event Event in Events)
			{
				EventModel = new EventModel
				{
					EventId = Event.EventId,
					Name = Event.Name,
				};

				EventModels.Add(EventModel);
			}

			return EventModels;			
		}
	}
}

