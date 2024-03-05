void main() async {
  print(await City3());
  print(await City());
  print(await Number());
  print("2");
}

Future<String> hello() async {
  return await "Hello";
}

//Don't wait the duration
//ဒါပေမဲ့ သူ့မှာပေးထားတဲ့ duration ကို print ထုတ်ပြီးမှဆက်စောင့်တယ် စောက်အဓိပ္ပာယ်မရှိ
//တကယ်လို့ ဒီ function ကိုအရင်ဆုံးရေးမိထားတယ်ဆိုရင်တော့ တခြား function ‌တွေက သူ(ဒီ function )စောင့်ရမဲ့အချိန်ကိုအချိန်ယူလုပ်သွားပြီမို့ duration မရှိတော့ဘူးပေါ့
Future<String> Number() async {
  Future.delayed(const Duration(seconds: 10));
  return "0004";
}

//"Wait the duration" before printing data
//City() and City2() are doing same functionality
Future<String> City() async {
  await Future.delayed(const Duration(seconds: 5));
  return "New York";
}

Future<String> City2() async =>
    Future.delayed(const Duration(seconds: 5), () => "Rangoon");

Future<String> City3() async =>
    await Future.delayed(const Duration(seconds: 3), () => "Urban Area");
