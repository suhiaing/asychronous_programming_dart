//future က အလုပ်လုပ်နေတဲ့အတွက် နောက်ဆုံးမှ print ထုတ်
void main() {
  print(1);

  var future = Future<int>.delayed(Duration(seconds: 0), () => 2);
  future.then((value) => print(value));

  print(3);
}
