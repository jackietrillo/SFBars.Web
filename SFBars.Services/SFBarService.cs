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
			return _repository.Table.AsEnumerable<SFBar>();
		}

		public SFBar GetById(int sfBarId)
		{
			return _repository.Table.FirstOrDefault(b => b.SFBarId== sfBarId);
			
		}

	}
}