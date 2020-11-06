using System;
using System.Collections.Generic;
using System.Text;

namespace MarketStore
{
    public abstract class BaseCard
    {
        protected double Turnover { get; set; }
        protected double PurchaseValue { get; set; }

        protected BaseCard() { }

        protected BaseCard(double to, double pv)
        {
            this.Turnover = to;
            this.PurchaseValue = pv;
        }

        protected abstract double CalculateDiscountRate();

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
