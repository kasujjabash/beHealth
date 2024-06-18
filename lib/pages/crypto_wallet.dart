import 'package:flutter/material.dart';

class CryptoWallet extends StatelessWidget {
  const CryptoWallet({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("My Crypto Wallet"),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            const SizedBox(
              height: 50,
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  // settings icon
                  Icon(
                    Icons.settings,
                    size: 30,
                  ),
                  //more crypto options
                  Icon(
                    Icons.filter_center_focus,
                    size: 30,
                  ),
                ],
              ),
            ),
            Center(
              child: Text(
                "Total balance",
                style: TextStyle(color: Colors.grey.shade600),
              ),
            ),
            Center(
              child: Text(
                "\$${200}",
                style: TextStyle(color: Colors.grey.shade600, fontSize: 40),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            const ListTile(
              title: Text("cUSD"),
              subtitle: Text("50 Celo Dollar"),
              trailing: Text(
                "\$${50.0}",
                style: TextStyle(fontSize: 18),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            const ListTile(
              title: Text("Troncoin"),
              subtitle: Text('30 TON'),
              trailing: Text(
                "\$${30.0}",
                style: TextStyle(fontSize: 18),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            const ListTile(
              title: Text("SOL"),
              subtitle: Text("30 Solana"),
              trailing: Text(
                "\$${30.0}",
                style: TextStyle(fontSize: 18),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            const ListTile(
              title: Text("LTC"),
              subtitle: Text("50 Litecoin"),
              trailing: Text(
                "\$${50}",
                style: TextStyle(fontSize: 18),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            const ListTile(
              title: Text("AVAX"),
              subtitle: Text("50 Avalanche C - chain"),
              trailing: Text(
                "\$${50}",
                style: TextStyle(fontSize: 18),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
