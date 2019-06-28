using Proj5_Murillo.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Proj5_Murillo
{
	public partial class ViewRegistrations : System.Web.UI.Page
	{
		protected void Page_Load(object sender, EventArgs e)
		{
			//get registrations from table to display them on views page
			using (SsbContext context = new SsbContext())
			{

				List<Registration> registrations = context.Registrations.ToList();

				foreach(Registration r in registrations)
				{
					litRegistrants.Text = litRegistrants.Text + $"<tr><td>{r.FirstName}</td><td>{r.LastName}</td><td>{r.Date}</td>" +
						$"<td>{r.Time}</td><td>{r.SinglesRegistered}</td><td>{r.DoublesRegistered}</td><td>{r.CharacterId}</td></tr>";
				}
			}
				
		}
	}
}