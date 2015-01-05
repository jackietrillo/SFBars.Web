using System.Data.Entity.ModelConfiguration;
using SFBars.Core.Domain;

namespace SFBars.Data.Mapping
{
	public partial class SFBarMap : EntityTypeConfiguration<SFBar>
	{
		public SFBarMap()
		{
			this.ToTable("SFBar");

			this.HasRequired(b => b.SFStreet)
						 .WithMany(s => s.SFBars)
						 .HasForeignKey(b => b.SFStreetId);
		}
	}
}