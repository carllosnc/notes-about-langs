namespace App
{
    class Person
    {
        public string Name { get; set; }
        public int Age { get; set; }

        public Person(string name, int age)
        {
            Name = name;
            Age = age;
        }
    }

    class Program
    {
        static void Main(string[] args)
        {
            var person = new Person(
                name: "John",
                age: 30
            );

            Console.WriteLine(person.Name);
        }
    }
}