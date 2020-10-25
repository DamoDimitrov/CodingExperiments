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
    }
}
