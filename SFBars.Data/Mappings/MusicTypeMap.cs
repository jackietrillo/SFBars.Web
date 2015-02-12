using System.Data.Entity.ModelConfiguration;
using Bars.Core.Domain;

namespace Bars.Data.Mappings
{
	public partial class MusicTypeMap : EntityTypeConfiguration<MusicType>
	{
		public MusicTypeMap()
		{
			this.ToTable("MusicType");
		}
	}
}
