using System;
using System.Collections.Generic;
using System.Linq;
using SFBars.Core.Domain;

namespace SFBars.Services
{
	public interface IBarTypeService
	{
		IQueryable<BarType> GetAllBarTypes();
	}
}
