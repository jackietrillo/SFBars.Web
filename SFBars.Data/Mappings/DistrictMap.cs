using System.Data.Entity.ModelConfiguration;
using SFBars.Core.Domain;

namespace SFBars.Data.Mappings
{
	public partial class DistrictMap : EntityTypeConfiguration<District>
	{
		public DistrictMap()
		{
			this.ToTable("District");
		}
	}
}
