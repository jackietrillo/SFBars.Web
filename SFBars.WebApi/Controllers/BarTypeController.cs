using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Web.Http;
using SFBars.Services;
using SFBars.Api.Models;
using SFBars.Core.Domain;
using SFBars.WebApi.Models;
using AutoMapper;
namespace SFBars.Api.Controllers
{
	public class BarTypeController : ApiController
	{
		private IBarTypeService _service;
		private IBarService _barService;		

		public BarTypeController(IBarTypeService service, IBarService barService)
		{
			_service = service;
			_barService = barService;

			Mapper.CreateMap<BarType, BarTypeModel>();
			
			Mapper.CreateMap<Bar, BarModel>();
		}

		public List<BarTypeModel> Get()
		{
			IQueryable<BarType> barTypes = _service.GetAllBarTypes();

			List<BarTypeModel> barTypeModels = Mapper.Map(barTypes, new List<BarTypeModel>());

			foreach (BarTypeModel barTypeModel in barTypeModels)
			{
				IQueryable<Bar> bars = _barService.GetBarsByBarType(barTypeModel.BarTypeId);
				barTypeModel.Bars = Mapper.Map(bars, new List<BarModel>());
			}

			return barTypeModels;			
		}

		public List<BarModel> Get(int id)
		{
			IQueryable<Bar> bars = _barService.GetBarsByBarType(id);			

			return Mapper.Map(bars, new List<BarModel>());
		}	
	}
}

