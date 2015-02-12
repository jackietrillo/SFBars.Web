using System;
using System.Collections.Generic;
using System.Linq;
using System.Data;
using Bars.Core.Domain;
using Bars.Core;
using Bars.Data;

namespace Bars.Services
{
	public class DistrictService : IDistrictService
	{
		private readonly IRepository<District> _repository;

		public DistrictService(IRepository<District> repository)
		{
			_repository = repository;
		}

		public IList<District> GetAllDistricts()
		{
			return _repository.Table.AsQueryable<District>().OrderBy(s => s.Name).ToList();
		}

		public District GetDistrictById(int districtId)
		{
			District District = _repository.Table.FirstOrDefault(s => s.DistrictId == districtId);
			return District;
		}

	}
}