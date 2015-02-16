using System;
using System.Collections.Generic;
using System.Linq;
using Bars.Core.Domain;

namespace Bars.Services
{
	public class ServiceFacade 
	{
		private BarService _barService;
		private BarService BarService
		{
			get { if (_barService == null) { _barService = new BarService(); } return _barService; }
		}

		private BarTypeService _barTypeService;
		private BarTypeService BarTypeService
		{
			get { if (_barTypeService == null) { _barTypeService = new BarTypeService(); } return _barTypeService; }
		}

		private DistrictService _districtService;
		private DistrictService DistrictService
		{
			get { if (_districtService == null) { _districtService = new DistrictService(); } return _districtService; }
		}

		private MusicTypeService _musicTypeService;
		private MusicTypeService MusicTypeService
		{
			get { if (_musicTypeService == null) { _musicTypeService = new MusicTypeService(); } return _musicTypeService; }
		}

		private EventService _eventService;
		private EventService EventService
		{
			get { if (_eventService == null) { _eventService = new EventService(); } return _eventService; }
		}

		private PartyService _partyService;
		private PartyService PartyService
		{
			get { if (_partyService == null) { _partyService = new PartyService(); } return _partyService; }
		}

		private TopListService _topListService;
		private TopListService TopListService
		{
			get { if (_topListService == null) { _topListService = new TopListService(); } return _topListService; }
		}

		public ServiceFacade() { }

		public List<Bar> GetAllBars()
		{
			return this.BarService.GetAllBars();
		}

		public List<BarType> GetAllBarTypes()
		{
			return this.BarTypeService.GetAllBarTypes();
		}

		public List<MusicType> GetAllMusicTypes()
		{
			return this.MusicTypeService.GetAllMusicTypes();
		}

		public List<District> GetAllDistricts()
		{
			return this.DistrictService.GetAllDistricts();
		}

		public List<Event> GetAllEvents()
		{
			return this.EventService.GetAllEvents();
		}

		public List<Party> GetAllParties()
		{
			return this.PartyService.GetAllParties();
		}

		public List<TopList> GetAllTopList()
		{
			return this.TopListService.GetAllTopList();
		}
	}
}
