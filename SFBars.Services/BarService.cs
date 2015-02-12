using System;
using System.Collections.Generic;
using System.Linq;
using System.Data;
using Bars.Core.Domain;
using Bars.Core;
using Bars.Data;

namespace Bars.Services
{
	public class BarService : IBarService
	{
		private readonly IRepository<Bar> _repository;
	
		public BarService(IRepository<Bar> repository)
		{
			_repository = repository;		
		}
	
		public Bar GetBarById(int barId)
		{
			return _repository.Table.FirstOrDefault(b => b.BarId == barId);			
		}

		public IList<Bar> GetAllBars()
		{
			return _repository.Table.AsQueryable().OrderBy(b => b.Name).ToList();
		}

		public IList<Bar> GetBarsByBarType(int barTypeId)
		{
			return _repository.Table.AsQueryable().Where(b => b.BarTypes.Any(bt => bt.BarTypeId == barTypeId)).ToList();
		}

		public IList<Bar> GetBarsByDistrict(int districtId)
		{
			return _repository.Table.AsQueryable().Where(b => b.DistrictId == districtId).OrderBy(b => b.Name).ToList();
		}

	}
}