using System.Data.Entity.ModelConfiguration;
using SFBars.Core.Domain;

namespace SFBars.Data.Mappings
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
								 .HasForeignKey(b => b.BarId);
		}
	}
}
