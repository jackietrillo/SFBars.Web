using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Bars.Core.Domain;

namespace Bars.Services
{
	public interface IBarService
	{		
		Bar GetBarById(int barId);		
		IList<Bar> GetAllBars();
		IList<Bar> GetBarsByBarType(int barTypeId);
		IList<Bar> GetBarsByDistrict(int districtId);				
	}
}
