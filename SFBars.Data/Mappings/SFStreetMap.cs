using System.Data.Entity.ModelConfiguration;
using SFBars.Core.Domain;

namespace SFBars.Data.Mapping
{
	public partial class SFStreetMap : EntityTypeConfiguration<SFStreet>
	{
		public SFStreetMap()
		{
			this.ToTable("SFStreet");		
		}
	}
}