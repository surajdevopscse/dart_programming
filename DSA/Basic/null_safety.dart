class Profile {
  String? name;
  String? bio;
  Profile(this.name, this.bio);

  printPrfileInfo() {
    print('Name : ${name ?? 'Unknown '} ');
    print('Bio : ${bio ?? 'Not Provided till Now '} ');
  }
}

void main(List<String> args) {
  Profile profile = Profile('Suraj', null);
  Profile profile1 = Profile('Suraj', 'Software Enginerr');
  Profile profile2 = Profile(null, 'Developer');
  Profile profile3 = Profile(null, null);

  profile.printPrfileInfo();
  profile1.printPrfileInfo();
  profile2.printPrfileInfo();
  profile3.printPrfileInfo();
}
