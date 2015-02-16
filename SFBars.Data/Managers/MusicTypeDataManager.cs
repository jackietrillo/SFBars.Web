using System;
using System.Collections.Generic;
using System.Linq;
using Bars.Core.Domain;

namespace Bars.Data
{
	internal sealed class MusicTypeDataManager : Repository<MusicType>
	{
		public MusicTypeDataManager(BarsDbContext context)
			: base(context)
		{	
			//
		}

		public List<MusicType> GetAllMusicTypes()
		{
			return this.Table.AsQueryable().OrderBy(b => b.Name).ToList();
		}
	}
}
