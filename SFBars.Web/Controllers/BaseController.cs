using System;
using System.Collections.Generic;
using System.Linq;
using System.Web.Mvc;
using Bars.Services;

namespace Bars.Controllers
{
	public class BaseController : Controller
	{
		private static ServiceFacade _serviceFacade;
		public static ServiceFacade ServiceFacade 
		{ 			
			set { _serviceFacade =  value; }
			get { return _serviceFacade; } 			
		}
	}
}