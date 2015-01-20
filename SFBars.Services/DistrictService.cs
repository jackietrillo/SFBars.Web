using System;
using System.Collections.Generic;
using System.Linq;
using System.Data;
using SFBars.Core.Domain;
using SFBars.Core;
using SFBars.Data;

namespace SFBars.Services
{
	public class DistrictService : IDistrictService
	{
		private readonly IRepository<District> _repository;

		public DistrictService(IRepository<District> repository)
		{
			_repository = repository;
		}

		public IQueryable<District> GetAllDistricts()
		{
			return _repository.Table.AsQueryable<District>().OrderBy(s => s.Name);
		}

		public District GetDistrictById(int districtId)
		{
			District District = _repository.Table.FirstOrDefault(s => s.DistrictId == districtId);
			return District;
		}

	}
}