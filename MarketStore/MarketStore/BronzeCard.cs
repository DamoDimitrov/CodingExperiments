using System;
using System.Collections.Generic;
using System.Text;
using System.Transactions;

namespace MarketStore
{
    public class BronzeCard : BaseCard
    {
        private const double DISCOUNT_RATE_1 = 0.01;
        private const double DISCOUNT_RATE_2 = 0.025;

        public BronzeCard() 
        {
        }
        public BronzeCard(double to, double pv) : base(to, pv)
        {
        }

        private double CalculateDiscountRate()
        {
            double dr = 0;
            if (this.Turnover >= 100 && this.Turnover < 300)
            {
                dr = DISCOUNT_RATE_1;
            }
            else if (this.Turnover >= 300)
            {
                dr = DISCOUNT_RATE_2;
            }

            return dr;
        }
        private double CalculateDiscount()
        {
            return this.PurchaseValue * CalculateDiscountRate();
        }

        public string GetCardInformation()
        {   
            double finalPrice = this.PurchaseValue - CalculateDiscount();
            return $"Purchase value: ${this.PurchaseValue:F} \n" +
                $"Discount rate: {CalculateDiscountRate() * 100:F1}% \n" +
                $"Discount: ${CalculateDiscount():F} \n" +
                $"Total: ${finalPrice:F}";
        }
    }
}
