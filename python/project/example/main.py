def add(a, b):
    return a + b
sub = lambda x, y: x - y
mul = lambda x, y: x * y
div = lambda x, y: x / y

def main():
    squares = [ x**2 for x in range(10)]
    print(squares)

    numbers = [1, 2, 3, 4, 5]
    even_numbers = [x for x in numbers if x % 2 == 0]
    even_square = [x**2 for x in numbers if x % 2 == 0]
    classified = ["even" if x % 2 == 0 else "odd" for x in numbers]

    matrix = [[1, 2, 3], [4, 5, 6], [7, 8, 9]]
    flattened = [num for row in matrix for num in row]
    print(flattened)

    print(even_numbers)
    print(even_square)
    print(classified)

if __name__ == "__main__":
    main()
