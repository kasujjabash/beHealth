import 'package:behealth/componets/payment_tile.dart';
import 'package:flutter/material.dart';

class PaymentPage extends StatelessWidget {
  const PaymentPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Choose payment option"),
        centerTitle: true,
      ),
      body: const Column(
        children: [
          SizedBox(
            height: 20,
          ),
          //Pay with Debit/Credit card
          PaymentTile(
            text: 'Debit/Credit card',
            iconData: Icons.credit_card,
          ),
          //pay with crypto Wallet
          PaymentTile(
            text: 'Pay with Crypto Wallet',
            iconData: Icons.currency_bitcoin_rounded,
          ),
          //pay with mobile money
          PaymentTile(
            text: 'Mobile money',
            iconData: Icons.money,
          ),
        ],
      ),
    );
  }
}
