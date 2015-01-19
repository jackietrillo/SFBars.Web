using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Web.Http;
using SFBars.Services;
using SFBars.Api.Models;
using SFBars.Core.Domain;

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
		}
		
		public IEnumerable<StreetModel> Get()
		{
			IEnumerable<Street> streets = _streetService.GetAll();

			List<StreetModel> streetModels = new List<StreetModel>();

			foreach (var s in streets)
			{
				var streetModel = new StreetModel{
				StreetId = s.StreetId,
				Name = s.Name,
				Descrip = s.Descrip,
				Latitude = s.Latitude,
				Longitude = s.Longitude,
				ImageUrl = s.ImageUrl				
				};
				
				IEnumerable<Bar> bars = _barService.GetByStreetId(s.StreetId);

				foreach (var bar in bars)
				{
					var barModel = new BarModel
					{
						BarId = bar.BarId,
						DistrictId = bar.DistrictId,
						StreetId = bar.StreetId,
						Name = bar.Name,
						Descrip = bar.Descrip,
						Latitude = bar.Latitude,
						Longitude = bar.Longitude,
						ImageUrl = bar.ImageUrl,
						Address = bar.Address,
						Hours = bar.Hours,
						Phone = bar.Phone,
						WebsiteUrl = bar.WebsiteUrl,
						FacebookUrl = bar.FacebookUrl,
						YelpUrl = bar.YelpUrl,
					};

					streetModel.Bars.Add(barModel);
				}

				streetModels.Add(streetModel);
			}

			return streetModels;
		}

		public StreetModel Get(int id)
		{
			Street entity = _streetService.GetById(id);		

			StreetModel model = new StreetModel {
				StreetId = entity.StreetId,
				Name = entity.Name,
				Descrip = entity.Descrip,
				Latitude = entity.Latitude,
				Longitude = entity.Longitude,
				ImageUrl = entity.ImageUrl				
			};

			model.Bars = new List<BarModel>();

			foreach (var bar in entity.Bars) {
				BarModel barModel = new BarModel {
					BarId = bar.BarId,
					Name = bar.Name ,
					Descrip = bar.Descrip,
					Latitude = bar.Latitude,
					Longitude = bar.Longitude,
					ImageUrl = bar.ImageUrl,
					Address = bar.Address,
					Phone = bar.Phone,
					WebsiteUrl = bar.WebsiteUrl,
					FacebookUrl = bar.FacebookUrl,
					YelpUrl = bar.YelpUrl,
				};
				
				model.Bars.Add(barModel);
			}
		
			return model;
		}

		// POST api/values
		public void Post([FromBody]string value)
		{
		}

		// PUT api/values/5
		public void Put(int id, [FromBody]string value)
		{
		}

		// DELETE api/values/5
		public void Delete(int id)
		{
		}

    }
}

