using Proj5_Murillo.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Proj5_Murillo
{
	public partial class WebForm1 : System.Web.UI.Page
	{
		protected void Page_Load(object sender, EventArgs e)
		{
		

		}

		protected void btnSubmit_Click(object sender, EventArgs e)
		{
			//if page is vaild run program
			if (Page.IsValid)
			{
				//write data to database
				using(SsbContext context = new SsbContext())
				{
					Registration registration = new Registration();

					registration.FirstName = txtFirstName.Text;
					registration.LastName = txtLastName.Text;
					registration.Date = drpDate.SelectedValue;
					registration.Time = drpTime.SelectedValue;
					registration.Email = txtEmail.Text;
					registration.ConfirmedEmail = txtConfirmEmail.Text;
					registration.SinglesRegistered = chkSingles.Checked;
					registration.DoublesRegistered = chkDoubles.Checked;
					registration.CharacterId = int.Parse(drpCharacter.SelectedValue);

					context.Registrations.Add(registration);
					context.SaveChanges();
				}

				//show confirmation info
				pnlForm.Visible = false;
				pnlConfirm.Visible = true;
				lblFirstName.Text = txtFirstName.Text;
				lblLastName.Text = txtLastName.Text;
				lblDate.Text = drpDate.SelectedItem.Text;
				lblTime.Text = drpTime.SelectedItem.Text;
				lblEmail.Text = txtEmail.Text;
				lblEmailConfirm.Text = txtConfirmEmail.Text;

				if (chkSingles.Checked)
				{
					lblSingles.Text = "Registered";
				}
				else
				{
					lblSingles.Text = "Not Registered";
				}

				if (chkDoubles.Checked)
				{
					lblDoubles.Text = "Registered";
				}
				else
				{
					lblDoubles.Text = "Not Registered";
				}

				lblCharacter.Text = drpCharacter.SelectedItem.Text;

			}
		}

		protected void drpCharacter_SelectedIndexChanged(object sender, EventArgs e)
		{
				//display image based on character selection
				if (drpCharacter.SelectedItem.Value == "0")
				{
					imgCharacter.ImageUrl = "~/Images/smashball.png";
				}
				else if (drpCharacter.SelectedItem.Value == "1")
				{
					imgCharacter.ImageUrl = "~/Images/mario.png";
				}
				else if (drpCharacter.SelectedItem.Value == "2")
				{
					imgCharacter.ImageUrl = "~/Images/pikachu.png";
				}
				else if (drpCharacter.SelectedItem.Value == "3")
				{
					imgCharacter.ImageUrl = "~/Images/sonic.png";
				}
				else if (drpCharacter.SelectedItem.Value == "4")
				{
					imgCharacter.ImageUrl = "~/Images/link.png";
				}
				else if (drpCharacter.SelectedItem.Value == "5")
				{
					imgCharacter.ImageUrl = "~/Images/bowser.png";
				}
				else if (drpCharacter.SelectedItem.Value == "6")
				{
					imgCharacter.ImageUrl = "~/Images/cloud.png";
				}
				else if (drpCharacter.SelectedItem.Value == "7")
				{
					imgCharacter.ImageUrl = "~/Images/donkeykong.png";
				}
				else if (drpCharacter.SelectedItem.Value == "8")
				{
					imgCharacter.ImageUrl = "~/Images/fox.png";
				}
				else if (drpCharacter.SelectedItem.Value == "9")
				{
					imgCharacter.ImageUrl = "~/Images/kirby.png";
				}
				else if (drpCharacter.SelectedItem.Value == "10")
				{
					imgCharacter.ImageUrl = "~/Images/luigi.png";
				}
				else if (drpCharacter.SelectedItem.Value == "11")
				{
					imgCharacter.ImageUrl = "~/Images/mewtwo.png";
				}
				else if (drpCharacter.SelectedItem.Value == "12")
				{
					imgCharacter.ImageUrl = "~/Images/peach.png";
				}
				else if (drpCharacter.SelectedItem.Value == "13")
				{
					imgCharacter.ImageUrl = "~/Images/samus.png";
				}
				else if (drpCharacter.SelectedItem.Value == "14")
				{
					imgCharacter.ImageUrl = "~/Images/wolf.png";
				}
				else if (drpCharacter.SelectedItem.Value == "15")
				{
					imgCharacter.ImageUrl = "~/Images/yoshi.png";
				}
				else
				{
					return;
				}

		}
	}
}