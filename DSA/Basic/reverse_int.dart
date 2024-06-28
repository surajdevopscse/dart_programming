int reversedInt(int i) {
  int sign = i < 0 ? -1 : 1;
  int reversed = 0;
  i = i.abs();
  while (i > 0) {
    int digit = i % 10;
    reversed = reversed * 10 + digit;
    i ~/= 10;
  }
  return sign * reversed;
}
