using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Web.Http;
using SFBars.Services;
using SFBars.Api.Models;
using SFBars.Core.Domain;
using AutoMapper;

namespace SFBars.Api.Controllers
{
    public class StreetController : ApiController
    {
		private readonly IStreetService _streetService;
		private readonly IBarService _barService;

		public StreetController(IStreetService streetService, IBarService barService)
		{
			_streetService = streetService;
			_barService = barService;

			Mapper.CreateMap<Street, StreetModel>();
			Mapper.CreateMap<Bar, BarModel>();
		}
		
		public IEnumerable<StreetModel> Get()
		{
			IEnumerable<Street> streets = _streetService.GetAllStreets();

			List<StreetModel> streetModels = new List<StreetModel>();

			foreach (var street in streets)
			{
				var streetModel = new StreetModel();
				Mapper.Map(street, streetModel);

				IQueryable<Bar> bars = _barService.GetBarsByStreet(street.StreetId);

				foreach (var bar in bars)
				{
					var barModel = new BarModel();
					Mapper.Map(bar, barModel);
					streetModel.Bars.Add(barModel);
				}

				streetModels.Add(streetModel);
			}

			return streetModels;
		}

		public StreetModel Get(int id)
		{
			Street street = _streetService.GetStreetById(id);

			var streetModel = new StreetModel();
			Mapper.Map(street, streetModel);

			streetModel.Bars = new List<BarModel>();

			foreach (var bar in street.Bars)
			{
				var barModel = new BarModel();
				Mapper.Map(bar, barModel);
				streetModel.Bars.Add(barModel);
			}

			return streetModel;
		}

	
		public void Post([FromBody]Street street)
		{
		}

		public void Put(int id, [FromBody]string value)
		{
		}

		public void Delete(int id)
		{
		}

    }
}

