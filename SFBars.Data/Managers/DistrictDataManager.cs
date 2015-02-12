using System;
using System.Collections.Generic;
using System.Linq;
using Bars.Core.Domain;

namespace Bars.Data
{
	internal sealed class DistrictDataManager : Repository<District>
	{
		public DistrictDataManager()
			: base()
		{
			//
		}

		public List<District> GetAllDistricts()
		{
			return this.Table.AsQueryable().ToList();
		}

		public District GetDistrictById(int districtId)
		{
			District district = this.Table.FirstOrDefault(s => s.DistrictId == districtId);
			return district;
		}
	}
}
