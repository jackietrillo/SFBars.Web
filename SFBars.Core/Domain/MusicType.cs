using System;
using System.Collections.Generic;

namespace Bars.Core.Domain
{
	public class MusicType : BaseEntity
	{
		public MusicType()
		{
			Bars = new List<Bar>();
		}

		public int MusicTypeId { get; set; }
		public string Name { get; set; }

		public virtual ICollection<Bar> Bars { get; set; }
	}
}
