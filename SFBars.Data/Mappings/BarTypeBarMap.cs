using System.Data.Entity.ModelConfiguration;
using Bars.Core.Domain;

namespace Bars.Data.Mappings
{
	public partial class BarTypeBarMap : EntityTypeConfiguration<BarTypeBar>
	{
		public BarTypeBarMap()
		{
			this.ToTable("BarTypeBar");

			this.HasRequired(b => b.Bar)
								 .WithMany(s => s.BarTypes)
								 .HasForeignKey(b => b.BarId);

			this.HasRequired(b => b.BarType)
								 .WithMany(s => s.Bars)
								 .HasForeignKey(b => b.BarTypeId);
		}
	}
}
