using System;
using System.Collections.Generic;
using System.Linq;
using Bars.Core.Domain;

namespace Bars.Data
{
	internal sealed class TopListDataManager : Repository<TopList>
	{
		public TopListDataManager()
			: base()
		{
			//
		}

		public List<TopList> GetAllTopList()
		{
			return this.Table.AsQueryable().ToList();
		}
	}
}
