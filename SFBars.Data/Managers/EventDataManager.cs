using System;
using System.Collections.Generic;
using System.Linq;
using Bars.Core.Domain;

namespace Bars.Data
{
	internal sealed class EventDataManager : Repository<Event>
	{
		public EventDataManager() : base()
		{	
			//
		}

		public List<Event> GetAllEvents()
		{
			return this.Table.AsQueryable().OrderBy(b => b.Name).ToList();
		}
	}
}
