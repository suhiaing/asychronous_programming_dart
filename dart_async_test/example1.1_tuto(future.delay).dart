void main() async {
  print(await getCity());
  print(await getPhoneNumber());
  print(await getCountry());
  print(await getZipCode());
}

Future<String> getPhoneNumber() => Future.delayed(
      const Duration(seconds: 3),
      () => '555-555-5555',
    );

Future<String> getCity() async {
  Future.delayed(const Duration(seconds: 8));
  return 'New York';
}

Future<String> getCountry() async => 'India';

// async keyword doesn't really contribute with anything here
Future<String> getZipCode() async => Future.delayed(
      const Duration(seconds: 3),
      () => '12345',
    );

//ge
//dfd
//dfdfdf
Future<String> getUserName() async => 'John Doe';
Future<String> getAddress() => Future.value('123 Main St');
