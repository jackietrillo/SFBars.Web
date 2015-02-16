using System;
using System.Collections.Generic;
using System.Linq;
using Bars.Core.Domain;
using Bars.Data;

namespace Bars.Services
{
	internal sealed class DistrictService 
	{
		private DataFacade _dataFacade;
		private DataFacade DataFacade { get { return _dataFacade ?? (_dataFacade = new DataFacade()); } }

		public DistrictService() {}

		public List<District> GetAllDistricts()
		{
			return DataFacade.GetAllDistricts();
		}
	}
}