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

        protected override double CalculateDiscountRate()
        {
            double dr = DISCOUNT_RATE_1;
            double additionalDiscount = this.Turnover / 10000;
            if(additionalDiscount > 0.08)
            {
                additionalDiscount = 0.08;
            }
            return dr + additionalDiscount;
        }
    }
}
