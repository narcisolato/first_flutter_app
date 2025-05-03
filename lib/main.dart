import 'package:first_app/stateful/stateful.dart';
import 'package:first_app/widget/button.dart';
import 'package:first_app/widget/currency_card.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(App());
}

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        // appBar: AppBar(
        //   title: Text('first app')
        // ),
        backgroundColor: Color(0xFF181818),
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 40),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text(
                          'Hey, Chanuk',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 24,
                            fontWeight: FontWeight.w800,
                          ),
                        ),
                        Text(
                          'Welcome back!',
                          style: TextStyle(
                            color: Colors.white.withAlpha(196),
                            fontSize: 15,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(height: 20),
                Text(
                  'Total Balance',
                  style: TextStyle(
                    color: Colors.white.withAlpha(200),
                    fontSize: 18,
                  ),
                ),
                SizedBox(height: 5),
                Text(
                  '\$3,141,592',
                  style: TextStyle(
                    color: Colors.white.withAlpha(200),
                    fontWeight: FontWeight.bold,
                    fontSize: 36,
                  ),
                ),
                SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Button(
                      text: "transfer",
                      backgroundColor: Colors.amber,
                      textColor: Colors.black,
                    ),
                    Button(
                      text: "request",
                      backgroundColor: Color(0xFF1F2123),
                      textColor: Colors.white,
                    ),
                  ],
                ),
                SizedBox(height: 30),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  // crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                      "Wallets",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 32,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Text(
                      "View All",
                      style: TextStyle(
                        color: Colors.white.withAlpha(200),
                        fontSize: 18,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 10),
                CurrencyCard(
                  name: "Euro",
                  code: "EUR",
                  amount: "1,230",
                  icon: Icons.euro_rounded,
                  inverted: false,
                  order: 0,
                ),
                CurrencyCard(
                  name: "Bitcoin",
                  code: "BTC",
                  amount: "1,230,000",
                  icon: Icons.currency_bitcoin_rounded,
                  inverted: true,
                  order: 1,
                ),
                CurrencyCard(
                  name: "Dollar",
                  code: "USD",
                  amount: "230",
                  icon: Icons.attach_money_rounded,
                  inverted: false,
                  order: 2,
                ),
                StatefulButton(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
