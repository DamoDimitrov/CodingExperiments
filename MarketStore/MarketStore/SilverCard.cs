using System;
using System.Collections.Generic;
using System.Text;

namespace MarketStore
{
    public class SilverCard : BaseCard
    {
        private const double DISCOUNT_RATE_1 = 0.02;
        private const double DISCOUNT_RATE_2 = 0.035;

        public SilverCard()
        {
        }
        public SilverCard(double to, double pv) : base(to, pv)
        {
        }

        private double CalculateDiscountRate()
        {
            if (this.Turnover >= 300)
            {
                return DISCOUNT_RATE_2;
            }

            return DISCOUNT_RATE_1;
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
