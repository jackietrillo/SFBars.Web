using System;
using System.Collections.Generic;
using System.Linq;
using Bars.Core.Domain;
using Bars.Data;

namespace Bars.Data
{
	public class DataFacade
	{
		private BarsDbContext _barsDbContext;

		private BarDataManager _barDataManager;
		private BarDataManager BarDataManager  
		{ 
			get  {	if (_barDataManager == null)  { _barDataManager = new BarDataManager(_barsDbContext);  } return _barDataManager;  }				
		}

		private BarTypeDataManager _barTypeDataManager;
		private BarTypeDataManager BarTypeDataManager
		{
			get { if (_barTypeDataManager == null) { _barTypeDataManager = new BarTypeDataManager(_barsDbContext); } return _barTypeDataManager; }
		}

		private BarTypeBarDataManager _barTypeBarDataManager;
		private BarTypeBarDataManager BarTypeBarDataManager  
		{ 
			get  {	 if (_barTypeBarDataManager == null) { _barTypeBarDataManager = new BarTypeBarDataManager(_barsDbContext); } return _barTypeBarDataManager;  }				
		}

		private DistrictDataManager _districtDataManager;
		private DistrictDataManager DistrictDataManager  
		{ 
			get  {	 if (_districtDataManager == null) { _districtDataManager = new DistrictDataManager(_barsDbContext); } return _districtDataManager;  }				
		}

		private MusicTypeDataManager _musicTypeDataManager;
		private MusicTypeDataManager MusicTypeDataManager  
		{ 
			get  {	 if (_musicTypeDataManager == null) { _musicTypeDataManager = new MusicTypeDataManager(_barsDbContext); } return _musicTypeDataManager;  }				
		}

		private EventDataManager _eventDataManager;
		private EventDataManager EventDataManager  
		{ 
			get  {	 if (_eventDataManager == null) { _eventDataManager = new EventDataManager(_barsDbContext); } return _eventDataManager;  }				
		}

		private PartyDataManager _partyDataManager;
		private PartyDataManager PartyDataManager  
		{ 
			get  {	 if (_partyDataManager == null) { _partyDataManager = new PartyDataManager(_barsDbContext); } return _partyDataManager;  }				
		}

		private TopListDataManager _topListDataManager;
		private TopListDataManager TopListDataManager
		{
			get { if (_topListDataManager == null) { _topListDataManager = new TopListDataManager(_barsDbContext); } return _topListDataManager; }
		}

		public DataFacade() 
		{
			 _barsDbContext = new BarsDbContext();
		}
		
		public Bar GetBarById(int barId)
		{
			return BarDataManager.GetBarById(barId);
		}

		public List<Bar> GetAllBars()
		{
			var barTable = BarDataManager.GetBarTable();
			var barTypeBarTable = BarTypeBarDataManager.GetBarTypeBarTable();
			
			var result = barTable.Join (barTypeBarTable, b => b.BarId, btb => btb.BarId, (b, btb) =>new { b.BarId, b.DistrictId, b.MusicTypeId, b.Name, b.Descrip, b.Address, b.Phone, 
				b.Hours, b.Latitude, b.Longitude, b.WebsiteUrl, b.CalendarUrl, b.FacebookUrl, b.YelpUrl, b.ImageUrl,btb.BarTypeId }).ToList();
				
			var bars = new	List<Bar>();

			foreach (var record in result)
			{
				if (!bars.Any(bar => bar.BarId == record.BarId))
				{
					var bar = new Bar
					{
						BarId = record.BarId,
						DistrictId = record.DistrictId,
						MusicTypeId = record.MusicTypeId,
						Name = record.Name,
						Descrip = record.Descrip,
						Address = record.Address,
						Phone = record.Phone,
						Hours = record.Hours,
						Latitude = record.Latitude,
						Longitude = record.Longitude,
						WebsiteUrl = record.WebsiteUrl,
						CalendarUrl = record.CalendarUrl,
						FacebookUrl = record.FacebookUrl,
						YelpUrl = record.YelpUrl,
						ImageUrl = record.ImageUrl,				
					};

					var barTypes = result.Where(r => r.BarId == record.BarId);
					foreach (var barType in barTypes)
					{
						bar.BarTypes.Add(new BarTypeBar { BarId = barType.BarId, BarTypeId = barType.BarTypeId });
					}
					bars.Add(bar);		
				}				
			} 

			return bars;
		}


		public List<Bar> GetAllBarsXXX()
		{
			return this.BarDataManager.GetAllBars();
		}

		public List<BarType> GetAllBarTypes()
		{
			return this.BarTypeDataManager.GetAllBarTypes();
		}

		public List<District> GetAllDistricts()
		{
			return this.DistrictDataManager.GetAllDistricts();
		}

		public List<Event> GetAllEvents()
		{
			return this.EventDataManager.GetAllEvents();
		}
		
		public List<Party> GetAllParties()
		{
			return this.PartyDataManager.GetAllParties();
		}

		public List<TopList> GetAllTopList()
		{
			return this.TopListDataManager.GetAllTopList();
		}

	}
}
