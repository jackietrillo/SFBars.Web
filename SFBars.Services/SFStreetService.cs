using System;
using System.Collections.Generic;
using System.Linq;
using System.Data;
using SFBars.Core.Domain;
using SFBars.Core;
using SFBars.Data;

namespace SFBars.Services
{
	public class SFStreetService : ISFStreetService
	{		
		private readonly IRepository<SFStreet> _repository;

		public SFStreetService(IRepository<SFStreet> repository)
		{
			_repository = repository;
		}

		public IEnumerable<SFStreet> GetAll()
		{
			return _repository.Table.AsEnumerable<SFStreet>();			
		}

		public SFStreet GetById(int sfStreetId)
		{
			SFStreet sfStreet =  _repository.Table.FirstOrDefault(s => s.SFStreetId == sfStreetId);
			return sfStreet;
		}
		
	}
}