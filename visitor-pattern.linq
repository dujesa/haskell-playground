<Query Kind="Program" />

public interface Currency 
{
	void Visit(Trader trader);
}

public class Euro : Currency 
{	
	public void Visit(Trader trader)
	{
		trader.Trade(this);
	}
}
public class Dollar : Currency 
{
	public void Visit(Trader trader)
	{
		trader.Trade(this);
	}
}
public class Ether : Currency 
{
	public void Visit(Trader trader)
	{
		trader.Trade(this);
	}
}

public interface Trader 
{
	void Trade(Euro euro);
	void Trade(Dollar euro);
	void Trade(Ether euro);
	
	void Trade(Currency currency)
	{
		Console.WriteLine("Invalid purchase!!!");
	}
}

public class Buyer : Trader
{
	public void Trade(Euro euro)
	{
		Console.WriteLine("Bought EUR");
	}

	public void Trade(Dollar euro)
	{
		Console.WriteLine("Bought USD");
	}

	public void Trade(Ether ether)
	{
		Console.WriteLine($"Bought ETH");
	}

	public void Trade(Currency currency)
	{
		Console.WriteLine("What did you just buy?!?");
	}
}

void Main()
{
	var eur = new Euro();
	var usd = new Dollar();
	var eth = new Ether();
	
	var trader = new Buyer();
	var currenciesToBuy = new List<Currency> { eur, usd, eth };

	//Single dispatch problem
	foreach (var currency in currenciesToBuy)
	{
		trader.Trade(currency);
	}

	//Visitor pattern for double dispatch emulation
	foreach (var currency in currenciesToBuy)
	{
		currency.Visit(trader);
	}
}

