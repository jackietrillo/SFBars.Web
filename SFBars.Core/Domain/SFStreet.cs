using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace SFBars.Core.Domain
{
	public class SFStreet : BaseEntity
	{
		private ICollection<SFBar> _sfBars;

		public int SFStreetId { get; set; }
		public string Name { get; set; }
		public string Descrip { get; set; }
		public decimal Latitude { get; set; }
		public decimal Longitude { get; set; }
		public string ImageUrl { get; set; }
		
		/// <summary>
		/// Gets or sets sf bars collection
		/// </summary>
		public virtual ICollection<SFBar> SFBars
		{
			get { return _sfBars ?? (_sfBars = new List<SFBar>()); }
			protected set { _sfBars = value; }
		}
	}
}
