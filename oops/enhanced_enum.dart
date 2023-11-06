enum CompanyTypeEnum {
  soleProperty('Sole Property'),
  soleHAi('Saled'),
  checkAvailabilty('Available');

  final String? text;
  const CompanyTypeEnum(this.text);
}

void main(List<String> args) {
  CompanyTypeEnum companyTypeEnum = CompanyTypeEnum.soleProperty;
  print(companyTypeEnum.text);
}
