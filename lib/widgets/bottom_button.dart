import 'package:flutter/material.dart';
import 'package:flutter_portfolio_app/constants.dart';

class BottomButton extends StatelessWidget {
  BottomButton({
    @required this.text,
    @required this.onPressed,
    this.color = Colors.blue,
  });

  final String text;
  final Function onPressed;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        decoration: BoxDecoration(
            color: color,
            borderRadius: BorderRadius.circular(kBottomButtonBorderRadius)),
        child: TextButton(
          onPressed: onPressed,
          child: Text(
            text,
            style: kBottomButtonTextStyle,
          ),
        ),
      ),
    );
  }
}
