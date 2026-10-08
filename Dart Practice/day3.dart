import 'dart:io';

double balance =2500.50;
bool premium = true;
List<String> hobbies = ["Reading", "Traveling", "Cooking"];
main() {
  hobbies.add("Gaming");
  print(hobbies[3]);
  stdout.write("Enter your name: ");
  String? name = stdin.readLineSync();
  stdout.write("Enter your age: ");
  int? age = int.tryParse(stdin.readLineSync() ?? '0');
  print("Name: $name");
  print("Age: $age");
  print("Balance: \$${balance.toStringAsFixed(2)}");
  print("Premium Member: $premium");

  if (premium && age! >= 18) {
    print ("Adult Premium Member");
  }
  else if (premium && age! < 18) {
    print ("Minor Premium Member");
  }
  else if (!premium && age! >= 18) {
    print ("Adult Non-Premium Member");
  }
  else {
    print ("Minor Non-Premium Member");
  }
}