using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Web.Http;
using Bars.Services;
using Bars.Api.Models;
using Bars.Core.Domain;

namespace Bars.Api.Controllers
{
	public class BarTypeController : BaseController
	{
		public BarTypeController() { }

		public List<BarTypeModel> Get()
		{
			IList<BarType> barTypes = ServiceFacade.GetAllBarTypes();

			List<BarTypeModel> barTypeModels = new List<BarTypeModel>();
			BarTypeModel barTypeModel;
			foreach (BarType barType in barTypes)
			{
				barTypeModel = new BarTypeModel { 
					BarTypeId = barType.BarTypeId,
					Name = barType.Name,				
				};
			
				barTypeModels.Add(barTypeModel);
			}

			return barTypeModels;			
		}
	}
}

