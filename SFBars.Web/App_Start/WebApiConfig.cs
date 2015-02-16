using System;
using System.Collections.Generic;
using System.Linq;
using System.Net.Http.Formatting;
using System.Net.Http.Headers;
using System.Web.Http;
using System.Web.Mvc;
using Newtonsoft.Json;
using Newtonsoft.Json.Serialization;

namespace Bars
{
	public static class WebApiConfig
	{
		public static void Register(HttpConfiguration config)
		{		
			var jsonFormatter = GlobalConfiguration.Configuration.Formatters.JsonFormatter;
			jsonFormatter.SerializerSettings.Formatting = Formatting.Indented;
			jsonFormatter.SerializerSettings.ContractResolver = new CamelCasePropertyNamesContractResolver();
			
			jsonFormatter.SerializerSettings.PreserveReferencesHandling = Newtonsoft.Json.PreserveReferencesHandling.Objects;
			config.Formatters.Remove(config.Formatters.XmlFormatter);
			
			config.Routes.MapHttpRoute(
				name: "DefaultApi",
				routeTemplate: "api/bars/{controller}/{id}",
				defaults: new { controller = "Bar",  id = RouteParameter.Optional }
			);

			Bars.Controllers.BaseController.ServiceFacade = ((Global)System.Web.HttpContext.Current.ApplicationInstance).ServiceFacade;
			Bars.Api.Controllers.BaseController.ServiceFacade = ((Global)System.Web.HttpContext.Current.ApplicationInstance).ServiceFacade;

			// Uncomment the following line of code to enable query support for actions with an IQueryable or IQueryable<T> return type.
			// To avoid processing unexpected or malicious queries, use the validation settings on QueryableAttribute to validate incoming queries.
			// For more information, visit http://go.microsoft.com/fwlink/?LinkId=279712.
			//config.EnableQuerySupport();
		}
	}
}