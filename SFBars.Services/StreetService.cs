using System;
using System.Collections.Generic;
using System.Linq;
using System.Data;
using SFBars.Core.Domain;
using SFBars.Core;
using SFBars.Data;

namespace SFBars.Services
{
	public class StreetService : IStreetService
	{		
		private readonly IRepository<Street> _repository;

		public StreetService(IRepository<Street> repository)
		{
			_repository = repository;
		}

		public IQueryable<Street> GetAllStreets()
		{
			return _repository.Table.AsQueryable<Street>().OrderBy(s => s.Name);			
		}

		public Street GetStreetById(int streetId)
		{
			Street street = _repository.Table.FirstOrDefault(s => s.StreetId == streetId);
			return street;
		}
		
	}
}