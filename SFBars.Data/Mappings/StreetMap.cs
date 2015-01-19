using System.Data.Entity.ModelConfiguration;
using SFBars.Core.Domain;

namespace SFBars.Data.Mapping
{
	public partial class StreetMap : EntityTypeConfiguration<Street>
	{
		public StreetMap()
		{
			this.ToTable("Street");		
		}
	}
}