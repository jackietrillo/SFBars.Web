using System;
using System.Collections.Generic;
using System.Linq;
using System.Data.Entity;
using SFBars.Core.Domain;
using System.Reflection;
using System.Data.Entity.ModelConfiguration;

namespace SFBars.Data
{
	public class SFBarsDbContext : DbContext, ISFBarsDbContext
	{
		public static string connectionString;

		public SFBarsDbContext()
			: base("SFBarsConnection")
		{
		}

		public virtual DbSet<Street> SFStreets { get; set; }
		public virtual DbSet<Bar> SFBars { get; set; }

		protected override void OnModelCreating(DbModelBuilder modelBuilder)
		{
			//Mappings		
			var typesToRegister = Assembly.GetExecutingAssembly().GetTypes()
					 .Where(type => !String.IsNullOrEmpty(type.Namespace))
					 .Where(type => type.BaseType != null && type.BaseType.IsGenericType && type.BaseType.GetGenericTypeDefinition() == typeof(EntityTypeConfiguration<>));
			foreach (var type in typesToRegister)
			{
				dynamic configurationInstance = Activator.CreateInstance(type);
				modelBuilder.Configurations.Add(configurationInstance);
			}
		}

		/// <summary>
		/// Get DbSet
		/// </summary>
		/// <typeparam name="TEntity">Entity type</typeparam>
		/// <returns>DbSet</returns>
		public new IDbSet<TEntity> Set<TEntity>() where TEntity : BaseEntity
		{
			return base.Set<TEntity>();
		}
	}
}