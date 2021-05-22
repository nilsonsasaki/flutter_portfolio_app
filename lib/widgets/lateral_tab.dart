import 'package:flutter/material.dart';
import 'package:flutter_portfolio_app/constants.dart';

class LateralTab extends StatelessWidget {
  LateralTab({
    @required this.isLeft,
    @required this.text,
    this.borderRadius = 10.0,
  });

  final bool isLeft;
  final String text;
  final double borderRadius;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 210.0,
      width: 40.0,
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 10.0),
        decoration: BoxDecoration(
          color: Colors.lightBlue,
          borderRadius: isLeft
              ? BorderRadius.only(
                  topRight: Radius.circular(borderRadius),
                  bottomRight: Radius.circular(borderRadius),
                )
              : BorderRadius.only(
                  topLeft: Radius.circular(borderRadius),
                  bottomLeft: Radius.circular(borderRadius),
                ),
        ),
        child: RotatedBox(
          quarterTurns: isLeft ? 3 : 1,
          child: Text(
            text,
            style: kLateralTabTextStyle,
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }
}
