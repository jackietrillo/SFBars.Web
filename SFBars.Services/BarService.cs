using System;
using System.Collections.Generic;
using System.Linq;
using System.Data;
using SFBars.Core.Domain;
using SFBars.Core;
using SFBars.Data;

namespace SFBars.Services
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

		public IQueryable<Bar> GetAllBars()
		{
			return _repository.Table.AsQueryable().OrderBy(b => b.Name);
		}

		public IQueryable<Bar> GetBarsByBarType(int barTypeId)
		{
			return _repository.Table.AsQueryable().Where(b => b.BarTypes.Any(bt => bt.BarTypeId == barTypeId));
		}

		public IQueryable<Bar> GetBarsByDistrict(int districtId)
		{
			return _repository.Table.AsQueryable().Where(b => b.DistrictId == districtId).OrderBy(b => b.Name);
		}

		public IQueryable<Bar> GetBarsByStreet(int streetId)
		{
			return _repository.Table.AsQueryable().Where(b => b.StreetId == streetId).OrderBy(b => b.Name);
		}

	}
}