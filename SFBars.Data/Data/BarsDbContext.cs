using System;
using System.Collections.Generic;
using System.Linq;
using System.Data.Entity;
using Bars.Core.Domain;
using System.Reflection;
using System.Data.Entity.ModelConfiguration;
using Bars.Data.Mappings;

namespace Bars.Data
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
			modelBuilder.Configurations.Add(new DistrictMap());
			modelBuilder.Configurations.Add(new MusicTypeMap());
			modelBuilder.Configurations.Add(new BarTypeMap());
			modelBuilder.Configurations.Add(new BarTypeBarMap());
			modelBuilder.Configurations.Add(new BarMap());
			modelBuilder.Configurations.Add(new EventMap());
			modelBuilder.Configurations.Add(new PartyMap());
			modelBuilder.Configurations.Add(new TopListMap());
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