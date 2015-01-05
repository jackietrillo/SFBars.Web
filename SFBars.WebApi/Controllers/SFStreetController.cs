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
		private readonly ISFStreetService _SfStreetService;
		private readonly ISFBarService _SfBarService;

		public SFStreetController(ISFStreetService sfStreetService, ISFBarService sfBarService)
		{
			_SfStreetService = sfStreetService;
			_SfBarService = sfBarService;
		}
		
		public IEnumerable<SFStreetModel> Get()
		{
			IEnumerable<SFStreet> sfStreets = _SfStreetService.GetAll();
			IEnumerable<SFStreetModel> sfStreetModels = sfStreets.Select( s => new SFStreetModel{
				SFStreetId = s.SFStreetId,
				Name = s.Name,
				Latitude = s.Latitude,
				Longitude = s.Longitude,
				ImageUrl= s.ImageUrl				
			}).ToList<SFStreetModel>();

			return sfStreetModels;
		}

		public SFStreetModel Get(int id)
		{
			SFStreet entity = _SfStreetService.GetById(id);		

			SFStreetModel model = new SFStreetModel {
				SFStreetId = entity.SFStreetId,
				Name = entity.Name,
				Latitude = entity.Latitude,
				Longitude = entity.Longitude,
				ImageUrl = entity.ImageUrl				
			};

			model.SFBars = new List<SFBarModel>();

			foreach (var SFBar in entity.SFBars)
			{
				SFBarModel barModel = new SFBarModel { SFBarId = SFBar.SFBarId, Name = SFBar.Name };
				
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

