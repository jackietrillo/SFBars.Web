using System;
using System.Collections.Generic;
using System.Linq;
using System.Data;
using SFBars.Core.Domain;
using SFBars.Core;
using SFBars.Data;

namespace SFBars.Services
{
	public class SFBarService : ISFBarService
	{
		private readonly IRepository<SFBar> _repository;

		public SFBarService(IRepository<SFBar> repository)
		{
			_repository = repository;
		}

		public IEnumerable<SFBar> GetAll()
		{
			return _repository.Table.AsEnumerable<SFBar>().OrderBy( b => b.Name);
		}

		public SFBar GetById(int sfBarId)
		{
			return _repository.Table.FirstOrDefault(b => b.SFBarId== sfBarId);			
		}

		public IEnumerable<SFBar> GetByStreetId(int sfStreetId)
		{			
			return _repository.Table.Where(b => b.SFStreetId == sfStreetId).OrderBy( b => b.Name);
		}
	}
}