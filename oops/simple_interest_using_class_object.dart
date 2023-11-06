class SimpleInterest {
  double? principle;
  double? rate;
  double? time;

  double calculateInterest() {
    return (principle! * rate! * time!) / 100;
  }
}

void main(List<String> args) {
  SimpleInterest interest = SimpleInterest();

  interest.principle = 2800000.0;
  interest.rate = 9.0;
  interest.time = 2;

  double totalInterest = interest.calculateInterest();
  double totalAmount = totalInterest + interest.principle!;

  print("Simple Interest is $totalInterest.");
  print("Total amount Including Interest is ${totalAmount}.");
}
