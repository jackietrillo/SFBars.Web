using System;
using System.Linq;
using System.Collections.Generic;
using System.Web.Http.Dependencies;
using StructureMap;

namespace SFBars.Api.DependencyResolution
{
	public class WebApiDependencyResolver : IDependencyResolver
	{
		protected IContainer _container;

		public WebApiDependencyResolver(IContainer container)
		{
			if (container == null)
			{
				throw new ArgumentNullException("container");
			}
			this._container = container;
		}

		public object GetService(Type serviceType)
		{			
			try
			{
				if (serviceType == null) return null;
		
				return serviceType.IsAbstract || serviceType.IsInterface
						   ? _container.TryGetInstance(serviceType)
						   : _container.GetInstance(serviceType);
			}
			catch
			{
				return null;
			}
		}

		public IEnumerable<object> GetServices(Type serviceType)
		{
			try
			{
				return _container.GetAllInstances(serviceType).Cast<object>();
			}
			catch (Exception)
			{
				return null;
			}
		}

		public IDependencyScope BeginScope()
		{
			var nestedContainer = _container.GetNestedContainer();
			return new WebApiDependencyResolver(nestedContainer);
		}

		public void Dispose()
		{
			_container.Dispose();
		}
	}

}