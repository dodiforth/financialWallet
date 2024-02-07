import 'package:flutter/material.dart';
import 'package:financial/widgets/custom_button.dart';
import 'package:financial/widgets/currency_card.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      backgroundColor: const Color(0xff181818),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              const SizedBox(height: 50),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  const Icon(Icons.notes, size: 50, color: Color(0xffFAFAFA)),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      const Text(
                        'Hey,Selena',
                        style: TextStyle(
                          color: Color(0xffFAFAFA),
                          fontSize: 28,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      Text(
                        'Welcome back',
                        style: TextStyle(
                          color: const Color(0xffFAFAFA).withOpacity(0.5),
                          fontSize: 17,
                        ),
                      ),
                    ],
                  )
                ],
              ),
              const SizedBox(height: 30),
              Text(
                'Total Balance',
                style: TextStyle(
                  color: const Color(0xffFAFAFA).withOpacity(0.8),
                  fontSize: 25,
                ),
              ),
              const SizedBox(height: 5),
              const Text(
                '\$ 5 194  382',
                style: TextStyle(
                    color: Color(0xffFAFAFA),
                    fontSize: 48,
                    fontWeight: FontWeight.w600),
              ),
              const SizedBox(height: 15),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CustomButtonFN(
                      text: 'Transfer',
                      bgColor: Color(0xffF2B33A),
                      textColor: Color(0xff181818)),
                  CustomButtonFN(
                    text: 'Request',
                    bgColor: Color(0xff1B1F25),
                    textColor: Color(0xffFAFAFA),
                  )
                ],
              ),
              const SizedBox(height: 60),
              Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'Wallets',
                    style: TextStyle(
                        color: Color(0xffFAFAFA),
                        fontSize: 36,
                        fontWeight: FontWeight.w600),
                  ),
                  Text(
                    'View All',
                    style: TextStyle(
                      color: const Color(0xffFAFAFA).withOpacity(0.8),
                      fontSize: 20,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              const CurrencyCard(
                currencyName: 'Euro',
                amount: '6 428',
                code: 'EUR',
                icon: Icons.euro,
                isInverted: false,
                order: 1,
              ),
              const CurrencyCard(
                currencyName: 'Bitcoin',
                amount: '56 700',
                code: 'BTC',
                icon: Icons.currency_bitcoin,
                isInverted: true,
                order: 2,
              ),
              const CurrencyCard(
                currencyName: 'Dollar',
                amount: '8 382',
                code: 'USD',
                icon: Icons.attach_money,
                isInverted: false,
                order: 3,
              ),
            ],
          ),
        ),
      ),
    ));
  }
}



//White Color Hex Code: #FAFAFA
//Black Color Hex Code: #181818
// contrast black background color : 0xff1B1F25
//Sky Ble Color Hex Code: #81ECE6
//Yellow Color Hex Code: #F2B33A
//Typography : Greycliff CF