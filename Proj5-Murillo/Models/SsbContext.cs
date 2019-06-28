using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Linq;
using System.Web;

namespace Proj5_Murillo.Models
{
	public class SsbContext : DbContext
	{
		//connect to myconn
		public SsbContext() : base("name=myconn")
		{
			Database.SetInitializer<SsbContext>(new DropCreateDatabaseIfModelChanges<SsbContext>());
		}
		public virtual DbSet<Registration> Registrations { get; set; }
	}
}