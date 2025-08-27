import 'package:flutter/material.dart';

class BoardTile extends StatelessWidget {
  final String symbol;
  final VoidCallback onTap;

  const BoardTile({super.key, required this.symbol, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(color: Colors.black),
          color: Colors.purple[100],
        ),
        child: Center(
          child: Text(
            symbol,
            style: const TextStyle(fontSize: 48),
          ),
        ),
      ),
    );
  }
}
