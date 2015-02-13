using System.Data.Entity.ModelConfiguration;
using Bars.Core.Domain;

namespace Bars.Data.Mappings
{
	public partial class TopListMap : EntityTypeConfiguration<TopList>
	{
		public TopListMap()
		{
			this.ToTable("TopList");
		}
	}
}
