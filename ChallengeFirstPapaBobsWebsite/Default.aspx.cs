using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ChallengeFirstPapaBobsWebsite
{
    public partial class Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void purchaseButton_Click(object sender, EventArgs e)
        {
            totalLabel.ForeColor = System.Drawing.Color.Black;
            totalLabel.Text = "";

            decimal total = 0m;

            Toppings toppings = Toppings.None;

            if (babyBobRadioButton.Checked)
            {
                total += 10;
            }
            else if (mamaBobRadioButton.Checked)
            {
                total += 13;
            } else if (papaBobRadioButton.Checked)
            {
                total += 16;
            }
            else
            {
                ValidationError("You must select a size");
                return;
            }

            if (thinCrustRadioButton.Checked)
            {
                total += 0;
            }
            else if (deepDishRadioButton.Checked)
            {
                total += 2;
            }
            else
            {
                ValidationError("You must select a crust");
                return;
            }

            if (pepperoniCheckBox.Checked)
            {
                total += 1.5m;
                toppings |= Toppings.Pepperoni;
            }
            if (onionsCheckBox.Checked)
            {
                total += 0.75m;
                toppings |= Toppings.Onions;
            }
            if (greenPeppersCheckBox.Checked)
            {
                total += 0.50m;
                toppings |= Toppings.GreenPeppers;
            }
            if (redPeppersCheckBox.Checked)
            {
                total += 0.75m;
                toppings |= Toppings.RedPeppers;
            }
            if (anchoviesCheckBox.Checked)
            {
                total += 2.00m;
                toppings |= Toppings.Anchovies;
            }

            if (
                (toppings.HasFlag(Toppings.Pepperoni)
                && toppings.HasFlag(Toppings.GreenPeppers)
                && toppings.HasFlag(Toppings.Anchovies))
                ||
                (toppings.HasFlag(Toppings.Pepperoni)
                && toppings.HasFlag(Toppings.RedPeppers)
                && toppings.HasFlag(Toppings.Onions))
                )
            {
                total -= 2.00m;
            }

            totalLabel.Text = $"Total: {total:c}";
        }

        private void ValidationError(string message)
        {
            totalLabel.ForeColor = System.Drawing.Color.Red;
            totalLabel.Text = message;
        }
    }

    [Flags]
    public enum Toppings
    {
        None = 0,
        Pepperoni = 1,
        Onions = 2,
        GreenPeppers = 4,
        RedPeppers = 8,
        Anchovies = 16
    }
}