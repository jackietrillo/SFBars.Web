using System;
using System.Collections.Generic;
using System.Linq;
using Bars.Core.Domain;
using Bars.Data;

namespace Bars.Data
{
	public class DataFacade
	{
		public DataFacade() 
		{
			//
		}

		public Bar GetBarById(int barId)
		{
			return new BarDataManager().GetBarById(barId);
		}

		public List<Bar> GetAllBars()
		{
			return new BarDataManager().GetAllBars();
		}

		public List<BarType> GetAllBarTypes()
		{
			return new BarTypeDataManager().GetAllBarTypes();
		}

		public List<District> GetAllDistricts()
		{
			return new DistrictDataManager().GetAllDistricts();
		}

		public List<Event> GetAllEvents()
		{
			return new EventDataManager().GetAllEvents();
		}
		
		public List<Party> GetAllParties()
		{
			return new PartyDataManager().GetAllParties();
		}

		public List<TopList> GetAllTopList()
		{
			return new TopListDataManager().GetAllTopList();
		}

	}
}
