using System;
using System.Collections.Generic;
using System.Linq;
using Bars.Core.Domain;

namespace Bars.Data
{
	internal sealed class BarTypeBarDataManager : Repository<BarTypeBar>
	{
		public BarTypeBarDataManager(BarsDbContext context)
			: base(context) {}
	
		public IQueryable<BarTypeBar> GetBarTypeBarTable()
		{
			return this.Table.AsQueryable();
		}
	}
}
