using System;
using System.Collections.Generic;
using System.Linq;
using Bars.Core.Domain;

namespace Bars.Services
{
	public class ServiceFacade : IServiceFacade
	{
		public ServiceFacade() 
		{ 
			//
		}

		public List<Bar> GetAllBars()
		{
			return new BarService().GetAllBars();
		}

		public List<BarType> GetAllBarTypes()
		{
			return new BarTypeService().GetAllBarTypes();
		}

		public List<District> GetAllDistricts()
		{
			return new DistrictService().GetAllDistricts();
		}

		public List<Event> GetAllEvents()
		{
			return new EventService().GetAllEvents();
		}

		public List<Party> GetAllParties()
		{
			return new PartyService().GetAllParties();
		}

		public List<TopList> GetAllTopList()
		{
			return new TopListService().GetAllTopList();
		}
	}
}
