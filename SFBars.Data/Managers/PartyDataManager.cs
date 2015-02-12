using System;
using System.Collections.Generic;
using System.Linq;
using Bars.Core.Domain;

namespace Bars.Data
{
	internal sealed class PartyDataManager : Repository<Party>
	{
		public PartyDataManager()
			: base()
		{
			//
		}

		public List<Party> GetAllParties()
		{
			return this.Table.AsQueryable().OrderBy(b => b.Name).ToList();
		}
	}
}
