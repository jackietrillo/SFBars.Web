using System;
using System.Collections.Generic;
using System.Linq;
using Bars.Core.Domain;
using Bars.Data;

namespace Bars.Services
{
	internal sealed class MusicTypeService 
	{
		private DataFacade _dataFacade;
		private DataFacade DataFacade { get { return _dataFacade ?? (_dataFacade = new DataFacade()); } }

		public MusicTypeService()
		{
		}

		public List<MusicType> GetAllMusicTypes()
		{
			return DataFacade.GetAllMusicTypes();
		}
	}
}
