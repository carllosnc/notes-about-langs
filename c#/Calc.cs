namespace Math
{
    // private struct person

    struct Person
    {
        private string Name { get; set; }
        private int Age { get; set; }

        public Person(string name, int age)
        {
            Name = name;
            Age = age;
        }
    }

    class Calc
    {
        public static int Add(int a, int b)
        {
            return a + b;
        }

        //private method
        //this method is not accessible from outside the class
        private static int Subtract(int a, int b)
        {
            return a - b;
        }

        //protected method
        //this method is accessible from classes that inherit from Calc
        protected static int Multiply(int a, int b)
        {
            return a * b;
        }

        //internal method
        //this method is accessible from any class in the same assembly
        internal static int Divide(int a, int b)
        {
            return a / b;
        }

        //protected internal method
        //this method is accessible from any class in the same assembly
        //and from classes that inherit from Calc
        protected internal static int Modulo(int a, int b)
        {
            return a % b;
        }
    }
}
