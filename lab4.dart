import 'dart:io';

void main(){
  int x = -1;
  while(x != 0){
    print("1. Task 1");
    print("2. Task 2");
    print("3. Task 3");
    print("4. Task 4");
    print("0. Exit");
    x = int.parse(stdin.readLineSync());
    switch(x){
      case 1:
        for(int i = 1; i <= 100; i++){
          if(i % 3 == 0 && i % 5 == 0) {
            print("Ushpen Bes");
          }else if(i % 5 == 0){
            print("Bes");
          }else if(i % 3 == 0) {
            print("Ush");
          }else{
            print(i);
          }
        }
        break;
      case 2:
        var c = 0;
        print("Enter number: ");
        var n = int.parse(stdin.readLineSync());
        for(int i = 1; i <= 1000000; i++){
          if(n == 0){
            break;
          }
          n = (n / 10).floor();
          c++;
        }
        print(c);
        break;
      case 3:
        var c = 0;
        print("Enter number: ");
        var year = int.parse(stdin.readLineSync());
        if(year % 100 == 0){
          print((year / 100).floor());
        }else{
          while(year > 100){
            year -= 100;
            c++;
          }
          c++;
          print(c);
        }
        break;
      case 4:
        print("Enter number: ");
        var n = int.parse(stdin.readLineSync());
        var m = 0;
        var even = 0;
        var odd = 0;
        for(int i = 1; i <= 1000000000; i++){
          if(n == 0){
            break;
          }
          m = n % 10;
          if(m % 2 == 0){
            even++;
          }else{
            odd++;
          }
          n = (n / 10).floor();
        }
        print(even);
        print(odd);
        break;
      case 0:
        break;
      default:
        print("Incorrect choice!");
    }
  }
}