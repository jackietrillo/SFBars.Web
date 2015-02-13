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
	public class EventController : BaseController
	{
		public EventController() { }

		public List<EventModel> Get()
		{
			IList<Event> events = ServiceFacade.GetAllEvents();

			List<EventModel> eventModels = new List<EventModel>();
			EventModel eventModel;

			foreach (Event Event in events)
			{
				eventModel = new EventModel
				{
					EventId = Event.EventId,
					Name = Event.Name,
				};

				eventModels.Add(eventModel);
			}

			return eventModels;			
		}
	}
}

