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
    public class SFStreetController : ApiController
    {
		private readonly ISFStreetService _sfStreetService;
		private readonly ISFBarService _sfBarService;

		public SFStreetController(ISFStreetService sfStreetService, ISFBarService sfBarService)
		{
			_sfStreetService = sfStreetService;
			_sfBarService = sfBarService;
		}
		
		public IEnumerable<SFStreetModel> Get()
		{
			IEnumerable<SFStreet> sfStreets = _sfStreetService.GetAll();

			List<SFStreetModel> sfStreetModels = new List<SFStreetModel>();

			foreach (var s in sfStreets)
			{
				var sfStreetModel = new SFStreetModel{
				SFStreetId = s.SFStreetId,
				Name = s.Name,
				Descrip = s.Descrip,
				Latitude = s.Latitude,
				Longitude = s.Longitude,
				ImageUrl = s.ImageUrl};

				sfStreetModel.SFBars = new List<SFBarModel>();

				IEnumerable<SFBar> sfBars = _sfBarService.GetByStreetId(s.SFStreetId);

				foreach (var bar in sfBars)
				{
					var sfBarModel = new SFBarModel
					{
						SFBarId = bar.SFBarId,
						SFStreetId = bar.SFStreetId,
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

					sfStreetModel.SFBars.Add(sfBarModel);
				}

				sfStreetModels.Add(sfStreetModel);
			}

			return sfStreetModels;
		}

		public SFStreetModel Get(int id)
		{
			SFStreet entity = _sfStreetService.GetById(id);		

			SFStreetModel model = new SFStreetModel {
				SFStreetId = entity.SFStreetId,
				Name = entity.Name,
				Descrip = entity.Descrip,
				Latitude = entity.Latitude,
				Longitude = entity.Longitude,
				ImageUrl = entity.ImageUrl				
			};

			model.SFBars = new List<SFBarModel>();

			foreach (var bar in entity.SFBars) {
				SFBarModel barModel = new SFBarModel {
					SFBarId = bar.SFBarId,
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
				
				model.SFBars.Add(barModel);
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

