using System;
using System.Collections.Generic;
using System.Text;

namespace MarketStore
{
    class GoldCard : BaseCard
    {
        private const double DISCOUNT_RATE_1 = 0.02;

        public GoldCard()
        {
        }
        public GoldCard(double to, double pv) : base(to, pv)
        {
        }

        private double CalculateDiscountRate()
        {
            double dr = DISCOUNT_RATE_1;
            double additionalDiscount = this.Turnover / 10000;
            if(additionalDiscount > 0.08)
            {
                additionalDiscount = 0.08;
            }
            return dr + additionalDiscount;
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
