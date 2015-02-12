using System.Data.Entity.ModelConfiguration;
using Bars.Core.Domain;

namespace Bars.Data.Mappings
{
	public partial class DistrictMap : EntityTypeConfiguration<District>
	{
		public DistrictMap()
		{
			this.ToTable("District");
		}
	}
}
