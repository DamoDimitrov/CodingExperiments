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

        protected override double CalculateDiscountRate()
        {
            if (this.Turnover >= 300)
            {
                return DISCOUNT_RATE_2;
            }

            return DISCOUNT_RATE_1;
        }
    
    }
}
