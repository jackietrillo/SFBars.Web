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
	public class MusicTypeController : BaseController
	{
		public MusicTypeController() { }

		public List<MusicTypeModel> Get()
		{
			IList<MusicType> musicTypes = ServiceFacade.GetAllMusicTypes();

			List<MusicTypeModel> musicTypeModels = new List<MusicTypeModel>();
			MusicTypeModel musicTypeModel;
			foreach (MusicType musicType in musicTypes)
			{
				musicTypeModel = new MusicTypeModel
				{
					MusicTypeId = musicType.MusicTypeId,
					Name = musicType.Name,
				};

				musicTypeModels.Add(musicTypeModel);
			}

			return musicTypeModels;
		}
	}
}

