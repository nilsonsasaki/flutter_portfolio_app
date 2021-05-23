import 'package:flutter/material.dart';
import 'package:flutter_portfolio_app/constants.dart';

class LateralTab extends StatelessWidget {
  LateralTab({
    @required this.isLeft,
    @required this.text,
  });

  final bool isLeft;
  final String text;

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
                  topRight: Radius.circular(kLateralTabBorderRadius),
                  bottomRight: Radius.circular(kLateralTabBorderRadius),
                )
              : BorderRadius.only(
                  topLeft: Radius.circular(kLateralTabBorderRadius),
                  bottomLeft: Radius.circular(kLateralTabBorderRadius),
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
