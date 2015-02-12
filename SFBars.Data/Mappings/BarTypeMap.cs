﻿using System.Data.Entity.ModelConfiguration;
using Bars.Core.Domain;

namespace Bars.Data.Mappings
{
	public partial class BarTypeMap : EntityTypeConfiguration<BarType>
	{
		public BarTypeMap()
		{
			this.ToTable("BarType");
		}
	}
}
