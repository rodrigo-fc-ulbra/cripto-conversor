import 'package:cripto_conversor/app/controllers/home_controller.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  final TextEditingController toText = TextEditingController();
  final TextEditingController fromText = TextEditingController();

  final homeController = HomeController(toText: toText, fromText: fromText);

  test('deve converter as moedas', () {
    toText.text = '2.0';
    homeController.convert();
    expect(fromText, 0.36);
  });
}
