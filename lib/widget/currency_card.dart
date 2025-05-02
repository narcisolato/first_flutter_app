import 'package:flutter/material.dart';

class CurrencyCard extends StatelessWidget {
  final String name;
  final String code;
  final String amount;
  final IconData icon;
  final bool inverted;

  late final _backgroundColor = inverted ? Color(0xFF1F2123) : Colors.white;
  late final _textColor = inverted ? Colors.white : Color(0xFF1F2123);

  CurrencyCard({
    super.key,
    required this.name,
    required this.code,
    required this.amount,
    required this.icon,
    required this.inverted,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      clipBehavior: Clip.hardEdge,
      decoration: BoxDecoration(
        color: _backgroundColor,
        borderRadius: BorderRadius.circular(24),
      ),
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  name,
                  style: TextStyle(
                    color: _textColor,
                    fontSize: 32,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 12),
                Row(
                  children: [
                    Text(
                      amount,
                      style: TextStyle(color: _textColor, fontSize: 18),
                    ),
                    SizedBox(width: 5),
                    Text(
                      code,
                      style: TextStyle(
                        color: _textColor.withAlpha(200),
                        fontSize: 18,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            Transform.scale(
              scale: 2.2,
              child: Transform.translate(
                offset: Offset(-10, 7),
                child: Icon(icon, color: _textColor, size: 81),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
