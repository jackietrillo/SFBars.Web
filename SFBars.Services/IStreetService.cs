using System;
using System.Collections.Generic;
using System.Linq;
using SFBars.Core.Domain;

namespace SFBars.Services
{
	public interface IStreetService
	{
		IQueryable<Street> GetAllStreets();
		Street GetStreetById(int streetId);
	}
}
