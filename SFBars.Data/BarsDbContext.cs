using System;
using System.Collections.Generic;
using System.Linq;
using System.Data.Entity;
using SFBars.Core.Domain;
using System.Reflection;
using System.Data.Entity.ModelConfiguration;

namespace SFBars.Data
{
	public class BarsDbContext : DbContext, IBarsDbContext
	{
		public static string connectionString;

		public BarsDbContext()
			: base("DefaultConnection")
		{
		}
		
		public virtual DbSet<Bar> Bars { get; set; }

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