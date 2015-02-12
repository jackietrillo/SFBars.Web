using System;
using System.Collections.Generic;
using System.Linq;
using Bars.Core.Domain;

namespace Bars.Data
{
	internal sealed class BarDataManager : Repository<Bar>
	{
		public BarDataManager() : base()
		{	
			//
		}
	
		public Bar GetBarById(int barId)
		{
			return this.Table.FirstOrDefault(b => b.BarId == barId);			
		}

		public List<Bar> GetAllBars()
		{
			return this.Table.AsQueryable().OrderBy(b => b.Name).ToList();
		}

	}
}
