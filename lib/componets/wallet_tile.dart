import 'package:flutter/material.dart';

class WalletTile extends StatelessWidget {
  final IconData iconData;
  final String walletName;
  final String amount;
  final Function()? onTap;
  const WalletTile(
      {super.key,
      required this.iconData,
      required this.amount,
      required this.walletName,
      required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: GestureDetector(
        onTap: onTap,
        child: Container(
          width: 150,
          height: 150,
          padding: const EdgeInsets.all(20),
          decoration: BoxDecoration(
              color: Colors.grey.shade200,
              borderRadius: BorderRadius.circular(20)),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Icon(
                iconData,
                size: 30,
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                walletName,
                style: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                amount,
                style: TextStyle(fontSize: 18, color: Colors.grey.shade500),
              )
            ],
          ),
        ),
      ),
    );
  }
}
