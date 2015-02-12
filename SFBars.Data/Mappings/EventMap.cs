using System.Data.Entity.ModelConfiguration;
using Bars.Core.Domain;

namespace Bars.Data.Mappings
{
	public partial class EventMap : EntityTypeConfiguration<Event>
	{
		public EventMap()
		{
			this.ToTable("Event");
		}
	}
}
