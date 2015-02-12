using System.Linq;
using Bars.Core.Domain;

namespace Bars.Core
{
	/// <summary>
	/// Repository
	/// </summary>
	public partial interface IRepository<T> where T : BaseEntity
	{
		/// <summary>
		/// Get entity by identifier
		/// </summary>
		/// <param name="id">Identifier</param>
		/// <returns>Entity</returns>
		T GetById(object id);

		/// <summary>
		/// Add entity
		/// </summary>
		/// <param name="entity">Entity</param>
		void Add(T entity);

		/// <summary>
		/// Update entity
		/// </summary>
		/// <param name="entity">Entity</param>
		void Update(T entity);

		/// <summary>
		/// Remove entity
		/// </summary>
		/// <param name="entity">Entity</param>
		void Remove(T entity);

		/// <summary>
		/// Gets a table
		/// </summary>
		IQueryable<T> Table { get; }

		/// <summary>
		/// Gets a table with "no tracking" enabled (EF feature) Use it only when you load record(s) only for read-only operations
		/// </summary>
		IQueryable<T> TableNoTracking { get; }
	}
}
