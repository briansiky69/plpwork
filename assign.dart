void main() {
  // Task 1: Sum of two numbers
  int result = sum(2, 3);
  print('Sum: $result');

  // Task 2: Print numbers from 1 to 10 using a for loop
  printNumbers();

  // Task 3: Switch statement to check for different string values
  checkString('hello');
  checkString('goodbye');
  checkString('unknown');

  // Task 4: Print numbers from 20 to 10 using a while loop
  printNumbersDescending();

  // Task 5: Check if a number is even or odd using an if-else statement
  checkEvenOrOdd(10);
  checkEvenOrOdd(11);

  // Task 6: Find the largest number in a list
  List<int> numbers = [1, 2, 3, 4, 5];
  int largest = findLargest(numbers);
  print('Largest number: $largest');

  // Task 7: Catch an exception using a try-catch block
  catchError();
}

int sum(int a, int b) {
  return a + b;
}

void printNumbers() {
  for (int i = 1; i <= 10; i++) {
    print(i);
  }
}

void checkString(String str) {
  switch (str) {
    case 'hello':
      print('Hello, world!');
      break;
    case 'goodbye':
      print('Goodbye, world!');
      break;
    default:
      print('Unknown string');
  }
}

void printNumbersDescending() {
  int i = 20;
  while (i >= 10) {
    print(i);
    i--;
  }
}

void checkEvenOrOdd(int num) {
  if (num % 2 == 0) {
    print('$num is even');
  } else {
    print('$num is odd');
  }
}

int findLargest(List<int> numbers) {
  int max = numbers[0];
  for (int num in numbers) {
    if (num > max) {
      max = num;
    }
  }
  return max;
}

void catchError() {
  try {
    int result = 10 ~/ 0;
    print(result);
  } catch (e) {
    print('Error: $e');
  }
}