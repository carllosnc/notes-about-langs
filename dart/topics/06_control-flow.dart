/*
  CONTROL FLOW STATEMENT

  https://www.dartlang.org/guides/language/language-tour#control-flow-statements
*/

main(List<String> args) {
  //control flow example
  var a = 10;
  var b = 5;

  if (a > b) {
    print('a is greater than b');
  } else if (a < b) {
    print('a is less than b');
  } else {
    print('a is equal to b');
  }

  // switch
  var command = 'OPEN';
  switch (command) {
    case 'CLOSED':
      print('close');
      break;
    case 'PENDING':
      print('pending');
      break;
    case 'APPROVED':
      print('approved');
      break;
    case 'DENIED':
      print('denied');
      break;
    case 'OPEN':
      print('open');
      break;
    default:
      print('default');
  }

  // for loops
  for (var i = 0; i <= 5; i++) {
    print(i);
  }

  // for iterators
  for (var i in [1, 2, 3]) {
    print('Iterator - $i');
  }

  // while
  var x = 0;
  while (x <= 10) {
    print(x++);

    if (x == 5) {
      break;
    }
  }

  // do while
  do {
    print('One time');
  } while (false);
}
