using System;
using System.Collections.Generic;
using System.Linq;
using Bars.Core.Domain;

namespace Bars.Data
{
	internal sealed class BarTypeDataManager : Repository<BarType>
	{
		public BarTypeDataManager(BarsDbContext context)
			: base(context) {}
	
		public List<BarType> GetAllBarTypes()
		{
			return this.Table.AsQueryable().OrderBy(b => b.Name).ToList();
		}
	}
}
