using System;

namespace MarketStore
{
    class Program
    {
        static void Main(string[] args)
        {
            BronzeCard bc = new BronzeCard(0, 150);
            Console.WriteLine(bc.GetCardInformation());
            Console.WriteLine();
            SilverCard sc = new SilverCard(600, 850);
            Console.WriteLine(sc.GetCardInformation());
            Console.WriteLine();
            GoldCard gc = new GoldCard(1500, 1300);
            Console.WriteLine(gc.GetCardInformation());
        }
    }
}
