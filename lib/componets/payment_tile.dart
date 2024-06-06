import 'package:flutter/material.dart';

class PaymentTile extends StatelessWidget {
  
  final IconData iconData;
  final String text;
  const PaymentTile(
      {super.key,
      required this.text,
      required this.iconData,
      });

  @override
  Widget build(BuildContext context) {
    
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
      child: Container(
        padding: const EdgeInsets.all(15),
        decoration: BoxDecoration(
            color: Colors.grey.shade200,
            borderRadius: BorderRadius.circular(10)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              text,
              style: const TextStyle(fontSize: 18),
            ),
            Icon(iconData),
          ],
        ),
      ),
    );
  }
}
