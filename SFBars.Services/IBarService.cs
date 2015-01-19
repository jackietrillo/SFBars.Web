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
		IEnumerable<Bar> GetAll();
		IEnumerable<Bar> GetByStreetId(int streetId);
		Bar GetById(int barId);
		
	}
}
