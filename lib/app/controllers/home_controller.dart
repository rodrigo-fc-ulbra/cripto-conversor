import 'package:cripto_conversor/app/models/currency_model.dart';
import 'package:flutter/cupertino.dart';

class HomeController {
  List<CurrencyModel> currencies;

  final TextEditingController toText;
  final TextEditingController fromText;

  CurrencyModel toCurrency;
  CurrencyModel fromCurrency;

  HomeController({this.toText, this.fromText}) {
    currencies = CurrencyModel.getCurrencies();
    toCurrency = currencies[0];
    fromCurrency = currencies[1];
  }

  void convert() {
    String text = toText.text;
    double value = double.tryParse(text.replaceAll(',', '.')) ?? 1.0;
    double result = 0;

    if (fromCurrency.name == 'Real') {
      result = value * toCurrency.real;
    } else if (fromCurrency.name == 'Dolar') {
      result = value * toCurrency.dolar;
    } else if (fromCurrency.name == 'Bitcoin') {
      result = value * toCurrency.bitcoin;
    } else if (fromCurrency.name == 'Litecoin') {
      result = value * toCurrency.litecoin;
    } else if (fromCurrency.name == 'Cardano') {
      result = value * toCurrency.cardano;
    } else if (fromCurrency.name == 'Uniswap') {
      result = value * toCurrency.uniswap;
    }

    fromText.text = result.toStringAsFixed(2);
  }
}
