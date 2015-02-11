using System.Data.Entity.ModelConfiguration;
using SFBars.Core.Domain;

namespace SFBars.Data.Mapping
{
	public partial class BarMap : EntityTypeConfiguration<Bar>
	{
		public BarMap()
		{
			this.ToTable("Bar");

			/*
			this.HasOptional(b => b.Street)
						 .WithMany(s => s.Bars)
						 .HasForeignKey(b => b.StreetId);
			*/
			this.HasRequired(b => b.District)
								 .WithMany(s => s.Bars)
								 .HasForeignKey(b => b.DistrictId);
		}
	}
}