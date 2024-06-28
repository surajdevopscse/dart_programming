import 'dart:io';

main() {
  pattern9(number: 6);
}

/*
******
******
******
******
******
******
*/
void pattern1({required int number}) {
  for (int i = 0; i < number; i++) {
    for (int j = 0; j < number; j++) {
      stdout.write('*');
    }
    print('');
  }
}

/*
123456
123456
123456
123456
123456
123456
*/
void pattern2({required int number}) {
  for (int i = 0; i < number; i++) {
    for (int j = 0; j < number; j++) {
      stdout.write(j + 1);
    }
    print('');
  }
}

/*
*
**
***
****
*****
******
*/
void pattern3({required int number}) {
  for (int i = 0; i < number; i++) {
    for (int j = 0; j <= i; j++) {
      stdout.write('*');
    }
    print('');
  }
}

/*
1
12
123
1234
12345
123456
*/
void pattern4({required int number}) {
  for (int i = 0; i < number; i++) {
    for (int j = 0; j <= i; j++) {
      stdout.write(j + 1);
    }
    print('');
  }
}

/*
1
22
333
4444
55555
666666
*/
void pattern5({required int number}) {
  for (int i = 0; i < number; i++) {
    for (int j = 0; j <= i; j++) {
      stdout.write(i + 1);
    }
    print('');
  }
}

/*
******
*****
****
***
**
*
*/
void pattern6({required int number}) {
  for (int i = number; i > 0; i--) {
    for (int j = 0; j < i; j++) {
      stdout.write("*");
    }
    print('');
  }
}

/*
123456
12345
1234
123
12
1
*/
void pattern7({required int number}) {
  for (int i = number; i > 0; i--) {
    for (int j = 0; j < i; j++) {
      stdout.write(j + 1);
    }
    print('');
  }
}

/* 
     *     
    ***    
   *****   
  *******  
 ********* 

 */
pattern8({required int number}) {
  for (int i = 0; i < number; i++) {
    for (int j = 0; j < number - i - 1; j++) {
      stdout.write(' ');
    }
    for (int k = 0; k < 2 * i + 1; k++) {
      stdout.write('*');
    }
    for (int j = 0; j < number - i - 1; j++) {
      stdout.write(' ');
    }
    print('');
  }
}

/* 
***********
 ********* 
  *******  
   *****   
    ***    
     *    
 */
pattern9({required int number}) {
  for (int i = 0; i < number; i++) {
    for (int j = 0; j < i; j++) {
      stdout.write(' ');
    }
    for (int k = 0; k < 2 * number - (2 * i + 1); k++) {
      stdout.write('*');
    }
    for (int j = 0; j < i; j++) {
      stdout.write(' ');
    }
    print('');
  }
}
