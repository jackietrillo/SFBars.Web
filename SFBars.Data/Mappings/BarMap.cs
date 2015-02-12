using System.Data.Entity.ModelConfiguration;
using Bars.Core.Domain;

namespace Bars.Data.Mapping
{
	public partial class BarMap : EntityTypeConfiguration<Bar>
	{
		public BarMap()
		{
			this.ToTable("Bar");
			
			this.HasOptional(m => m.MusicType)
						 .WithMany(s => s.Bars)
						 .HasForeignKey(b => b.MusicTypeId);
			
			this.HasRequired(b => b.District)
								 .WithMany(s => s.Bars)
								 .HasForeignKey(b => b.DistrictId);
		}
	}
}