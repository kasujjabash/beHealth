import 'package:flutter/material.dart';

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
      body: const Column(
        children: [
          // GridView.builder(
          //     gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          //         crossAxisCount: 2),
          //     itemBuilder: GridTile(
          //       child:,
          //      ),),
        ],
      ),
    );
  }
}
