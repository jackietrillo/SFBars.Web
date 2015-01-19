using System.Data.Entity.ModelConfiguration;
using SFBars.Core.Domain;

namespace SFBars.Data.Mappings
{

	public partial class BarTypeBarMap : EntityTypeConfiguration<BarTypeBar>
	{
		public BarTypeBarMap()
		{
			this.ToTable("BarTypeBar");

			
		}
	}
}
