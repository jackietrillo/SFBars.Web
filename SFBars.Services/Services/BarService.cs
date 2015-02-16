using System;
using System.Collections.Generic;
using System.Linq;
using System.Data;
using Bars.Core.Domain;
using Bars.Core;
using Bars.Data;

namespace Bars.Services
{
	internal sealed class BarService 
	{
		private DataFacade _dataFacade;
		private DataFacade DataFacade { get { return _dataFacade ?? (_dataFacade = new DataFacade()); } }
	
		public Bar GetBarById(int barId)
		{
			return DataFacade.GetBarById(barId);			
		}

		public List<Bar> GetAllBars()
		{
			return DataFacade.GetAllBars();
		}

	}
}