using System;
using System.Collections.Generic;
using System.Linq;
using System.Net.Http.Formatting;
using System.Net.Http.Headers;
using System.Web.Http;
using System.Web.Mvc;
using AutoMapper;
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

/*
			GlobalConfiguration.Configuration.Formatters.JsonFormatter.MediaTypeMappings.Add(
				new QueryStringMapping("type", "json", new MediaTypeHeaderValue("application/json")));

			GlobalConfiguration.Configuration.Formatters.XmlFormatter.MediaTypeMappings.Add(
				new QueryStringMapping("type", "xml", new MediaTypeHeaderValue("application/xml")));

*/
			config.Routes.MapHttpRoute(
				name: "DefaultApi",
				routeTemplate: "api/bars/{controller}/{id}",
				defaults: new { id = RouteParameter.Optional }
			);


			// Uncomment the following line of code to enable query support for actions with an IQueryable or IQueryable<T> return type.
			// To avoid processing unexpected or malicious queries, use the validation settings on QueryableAttribute to validate incoming queries.
			// For more information, visit http://go.microsoft.com/fwlink/?LinkId=279712.
			//config.EnableQuerySupport();
		}
	}
}