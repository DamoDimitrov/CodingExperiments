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

        protected override double CalculateDiscountRate()
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
    }
}
