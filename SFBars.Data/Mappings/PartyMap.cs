using System.Data.Entity.ModelConfiguration;
using Bars.Core.Domain;

namespace Bars.Data.Mappings
{
	public partial class PartyMap : EntityTypeConfiguration<Party>
	{
		public PartyMap()
		{
			this.ToTable("Party");
		}
	}
}
