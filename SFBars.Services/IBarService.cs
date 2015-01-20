using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using SFBars.Core.Domain;

namespace SFBars.Services
{
	public interface IBarService
	{		
		Bar GetBarById(int barId);		
		IQueryable<Bar> GetAllBars();	
		IQueryable<Bar> GetBarsByBarType(int barTypeId);
		IQueryable<Bar> GetBarsByDistrict(int districtId);
		IQueryable<Bar> GetBarsByStreet(int streetId);			
	}
}
