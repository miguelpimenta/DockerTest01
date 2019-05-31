using System;

public static class Program
{
    public static void Main(string[] args)
    {
        var defaultMessage = "Hello from .NET Core!";
        var counter = 0;
        var max = args.Length != 0 ? Convert.ToInt32(args[0]) : -1;
        while (max == -1 || counter < max)
        {
            counter++;
            Console.WriteLine($"Counter: {counter}");
            System.Threading.Tasks.Task.Delay(1000).Wait();
        }
    }
}