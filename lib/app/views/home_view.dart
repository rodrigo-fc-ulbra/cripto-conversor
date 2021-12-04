import 'package:cripto_conversor/app/components/currency_box.dart';
import 'package:cripto_conversor/app/controllers/home_controller.dart';
import 'package:flutter/material.dart';

class HomeView extends StatefulWidget {
  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  final TextEditingController toText = TextEditingController();

  final TextEditingController fromText = TextEditingController();
  HomeController homeController;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    homeController = HomeController(toText: toText, fromText: fromText);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SizedBox(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      child: Padding(
        padding: EdgeInsets.only(left: 30, right: 30, top: 100, bottom: 20),
        child: ListView(
          children: [
            Image.asset(
              'assets/logo.png',
              width: 250,
              height: 250,
            ),
            SizedBox(height: 50),
            CurrencyBox(
              selectedItem: homeController.toCurrency,
              controller: toText,
              items: homeController.currencies,
              onChanged: (model) {
                setState(() {
                  homeController.toCurrency = model;
                });
              },
            ),
            SizedBox(height: 10),
            CurrencyBox(
              selectedItem: homeController.fromCurrency,
              controller: fromText,
              items: homeController.currencies,
              onChanged: (model) {
                setState(() {
                  homeController.fromCurrency = model;
                });
              },
            ),
            SizedBox(height: 50),
            RaisedButton(
              color: Colors.amber,
              onPressed: () {
                homeController.convert();
              },
              child: Text('Converter'),
            )
          ],
        ),
      ),
    ));
  }
}
