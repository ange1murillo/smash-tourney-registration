using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Web;

namespace Proj5_Murillo.Models
{
	//table schema
	public class Registration
	{
		[Key]
		public int Id { get; set; }
		[Required]
		public string FirstName { get; set; }
		[Required]
		public string LastName { get; set; }
		[Required]
		public string Date { get; set; }
		[Required]
		public string Time { get; set; }
		[Required]
		public string Email { get; set; }
		[Required]
		public string ConfirmedEmail { get; set; }

		public bool SinglesRegistered { get; set; }

		public bool DoublesRegistered { get; set; }
		[Required]
		public int CharacterId { get; set; }
	}
}