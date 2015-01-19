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

		public IEnumerable<Bar> GetAll()
		{
			return _repository.Table.AsEnumerable<Bar>().OrderBy( b => b.Name);
		}

		public Bar GetById(int barId)
		{
			return _repository.Table.FirstOrDefault(b => b.BarId== barId);			
		}

		public IEnumerable<Bar> GetByStreetId(int streetId)
		{
			return _repository.Table.Where(b => b.StreetId == streetId).OrderBy(b => b.Name);
		}
	}
}