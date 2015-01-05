using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using SFBars.Core.Domain;

namespace SFBars.Services
{
	public interface ISFBarService
	{
		IEnumerable<SFBar> GetAll();
		SFBar GetById(int sfBarId);
	}
}
