using System;
using System.Collections.Generic;
using System.Linq;
using Bars.Core.Domain;
using Bars.Services;

namespace Bars.Services
{
	public interface IServiceFacade
	{
		List<Bar> GetAllBars();		
		List<BarType> GetAllBarTypes();
		List<District> GetAllDistricts();	
		List<Event> GetAllEvents();	
		List<Party> GetAllParties();		
		List<TopList> GetAllTopList();		
	}
}
