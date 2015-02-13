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
	public class TopListController : BaseController
	{
		public TopListController() { }

		public List<TopListModel> Get()
		{
			List<TopList> topList = ServiceFacade.GetAllTopList();

			List<TopListModel> topListModels = new List<TopListModel>();
			TopListModel topListModel;

			foreach (TopList topListItem in topList)
			{
				topListModel = new TopListModel
				{
					TopListId = topListItem.TopListId,
					BarId = topListItem.BarId,
					Rank = topListItem.Rank,
				};

				topListModels.Add(topListModel);
			}

			return topListModels;
		}
	}
}

