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
	public class PartyController : BaseController
	{
		public PartyController() { }

		public List<PartyModel> Get()
		{
			List<Party> parties = ServiceFacade.GetAllParties();

			List<PartyModel> partyModels = new List<PartyModel>();
			PartyModel partyModel;

			foreach (Party party in parties)
			{
				partyModel = new PartyModel
				{
					PartyId = party.PartyId,
					Name = party.Name,
					Address = party.Address,
					BarId = party.BarId					
				};

				partyModels.Add(partyModel);
			}

			return partyModels;
		}
	}
}

