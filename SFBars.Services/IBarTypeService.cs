using System;
using System.Collections.Generic;
using System.Linq;
using Bars.Core.Domain;

namespace Bars.Services
{
	public interface IBarTypeService
	{
		IList<BarType> GetAllBarTypes();
	}
}
