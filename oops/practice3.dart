enum Gender { male, female, other }

void main(List<String> args) {
  for (var gender in Gender.values) {
    print(gender);
  }
}
