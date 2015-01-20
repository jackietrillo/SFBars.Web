using System;
using System.Collections.Generic;
using System.Linq;
using SFBars.Core.Domain;

namespace SFBars.Services
{
	public interface IDistrictService
	{
		IQueryable<District> GetAllDistricts();
		District GetDistrictById(int districtId);
	}
}
