import 'dart:convert';

import 'package:cripto_conversor/app/models/currency_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:http/http.dart' as http;

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

  Future<double> getValDolar() async {
    http.Response response;

    String url = "https://economia.awesomeapi.com.br/json/last/USD-BRL";
    response = await http.get(url);
    Map<String, dynamic> retor = json.decode(response.body)["USDBRL"];
    double val = double.tryParse(retor["bid"]);

    return val;
  }

  Future<double> getValBitcoin() async {
    http.Response response;

    String url = "https://www.mercadobitcoin.net/api/BTC/ticker/";
    response = await http.get(url);
    Map<String, dynamic> retor = json.decode(response.body)["ticker"];
    double val = double.tryParse(retor["buy"]);

    return val;
  }

  Future<double> getValLitecoin() async {
    http.Response response;

    String url = "https://www.mercadobitcoin.net/api/LTC/ticker/";
    response = await http.get(url);
    Map<String, dynamic> retor = json.decode(response.body)["ticker"];
    double val = double.tryParse(retor["buy"]);

    return val;
  }

  Future<double> getValCardano() async {
    http.Response response;

    String url = "https://www.mercadobitcoin.net/api/ADA/ticker/";
    response = await http.get(url);
    Map<String, dynamic> retor = json.decode(response.body)["ticker"];
    double val = double.tryParse(retor["buy"]);

    return val;
  }

  Future<double> getValUniswap() async {
    http.Response response;

    String url = "https://www.mercadobitcoin.net/api/UNI/ticker/";
    response = await http.get(url);
    Map<String, dynamic> retor = json.decode(response.body)["ticker"];

    double val = double.tryParse(retor["buy"]);

    return val;
  }

  Future<void> convert() async {
    String text = toText.text;
    double value = double.tryParse(text.replaceAll('-', '.')) ?? 1.0;
    double result = 0;
    double reais = 0;

    //convert to (informed currency) to real
    if (toCurrency.name == 'Real') {
      reais = value;
    } else if (toCurrency.name == 'Dolar') {
      reais = value * await getValDolar();
    } else if (toCurrency.name == 'Bitcoin') {
      reais = value * await getValBitcoin();
    } else if (toCurrency.name == 'Litecoin') {
      reais = value * await getValLitecoin();
    } else if (toCurrency.name == 'Cardano') {
      reais = value * await getValCardano();
    } else if (toCurrency.name == 'Uniswap') {
      reais = value * await getValUniswap();
    }

    //convert from real wanted currency
    if (fromCurrency.name == 'Real') {
      result = reais;
    } else if (fromCurrency.name == 'Dolar') {
      result = reais / await getValDolar();
    } else if (fromCurrency.name == 'Bitcoin') {
      result = reais / await getValBitcoin();
    } else if (fromCurrency.name == 'Litecoin') {
      result = reais / await getValLitecoin();
    } else if (fromCurrency.name == 'Cardano') {
      result = reais / await getValCardano();
    } else if (fromCurrency.name == 'Uniswap') {
      result = reais / await getValUniswap();
    }

    fromText.text = result.toString();
  }
}
