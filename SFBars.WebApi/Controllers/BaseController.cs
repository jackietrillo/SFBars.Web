using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Web.Http;
using Bars.Api.Models;
using Bars.Core.Domain;

namespace Bars.Api.Controllers
{
    public class BaseController : ApiController
    {	
		protected BarModel MapBarToBarModel(Bar bar)
		{
			return new BarModel
			{
				BarId = bar.BarId,
				DistrictId = bar.DistrictId,
				MusicTypeId = bar.MusicTypeId,
				Name = bar.Name,
				Descrip = bar.Descrip,
				Address = bar.Address,
				Phone = bar.Phone,
				Hours = bar.Hours,
				Latitude = bar.Latitude,
				Longitude = bar.Longitude,
				WebsiteUrl = bar.WebsiteUrl,
				CalendarUrl = bar.CalendarUrl,
				FacebookUrl = bar.FacebookUrl,
				YelpUrl = bar.YelpUrl,
				ImageUrl = bar.ImageUrl
			};
		}
    }
}
