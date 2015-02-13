using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Http;
using System.Web.Mvc;
using System.Web.Optimization;
using System.Web.Routing;
using System.Configuration;
using Newtonsoft.Json;
using Newtonsoft.Json.Serialization;
using Bars.Services;

namespace Bars
{
	public class Global : System.Web.HttpApplication
	{
		public ServiceFacade ServiceFacade { get; private set; }

		protected void Application_Start()
		{
			ServiceFacade = new ServiceFacade();

			AreaRegistration.RegisterAllAreas();
			WebApiConfig.Register(GlobalConfiguration.Configuration);
			FilterConfig.RegisterGlobalFilters(GlobalFilters.Filters);
			RouteConfig.RegisterRoutes(RouteTable.Routes);
			BundleConfig.RegisterBundles(BundleTable.Bundles);
			AuthConfig.RegisterAuth();					
		}

		public override void Init()
		{
			base.Init();		
		}

		protected void Application_End(object sender, EventArgs e)
		{
			//
		}

	}
}