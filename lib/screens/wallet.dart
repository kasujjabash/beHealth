import 'package:behealth/pages/crypto_wallet.dart';
import 'package:behealth/pages/payment.dart';
import 'package:flutter/material.dart';

import '../componets/wallet_tile.dart';

class Wallet extends StatelessWidget {
  const Wallet({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("My Wallet"),
      ),
      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              WalletTile(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const CryptoWallet()));
                },
                iconData: Icons.currency_bitcoin,
                walletName: "Crypto",
                amount: "200 USDC",
              ),
              WalletTile(
                onTap: () {},
                iconData: Icons.account_balance_wallet_rounded,
                walletName: " Be-Wallets",
                amount: "200,000 UGX",
              )
            ],
          )
        ],
      ),
    );
  }
}
