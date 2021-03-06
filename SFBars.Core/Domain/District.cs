﻿using System;
using System.Collections.Generic;

namespace Bars.Core.Domain
{
	public class District : BaseEntity
	{
		public District()
		{
			Bars = new List<Bar>();
		}

		public int DistrictId { get; set; }
		public string Name { get; set; }

		public virtual ICollection<Bar> Bars { get; set; }
	}
}
