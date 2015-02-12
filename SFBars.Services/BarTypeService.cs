using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Bars.Core;
using Bars.Core.Domain;

namespace Bars.Services
{
	public class BarTypeService : IBarTypeService
	{	
		private readonly IRepository<BarType> _repository;

		public BarTypeService(IRepository<BarType> repository)
		{
			_repository = repository;
		}

		public IList<BarType> GetAllBarTypes()
		{
			return _repository.Table.AsQueryable().OrderBy(b => b.Name).ToList();
		}
	}
}
