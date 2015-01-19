using System.Data.Entity.ModelConfiguration;
using SFBars.Core.Domain;

namespace SFBars.Data.Mappings
{
	public partial class BarTypeMap : EntityTypeConfiguration<BarType>
	{
		public BarTypeMap()
		{
			this.ToTable("BarType");
		}
	}
}
