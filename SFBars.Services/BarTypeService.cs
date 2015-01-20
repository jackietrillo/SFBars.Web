using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using SFBars.Core;
using SFBars.Core.Domain;

namespace SFBars.Services
{
	public class BarTypeService : IBarTypeService
	{	
		private readonly IRepository<BarType> _repository;

		public BarTypeService(IRepository<BarType> repository)
		{
			_repository = repository;
		}

		public IQueryable<BarType> GetAllBarTypes()
		{
			return _repository.Table.AsQueryable().OrderBy(b => b.Name);
		}
	}
}
