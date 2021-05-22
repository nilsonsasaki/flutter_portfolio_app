import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter_portfolio_app/widgets/lateral_tab.dart';

class FirstScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Flexible(child: Container(), flex: 1),
                      LateralTab(
                        isLeft: true,
                        text: 'Portfolio',
                      ),
                      Flexible(child: Container(), flex: 5),
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Flexible(child: Container(), flex: 1),
                      LateralTab(
                        isLeft: false,
                        text: 'Resume',
                      ),
                      Flexible(child: Container(), flex: 5),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 50.0,
              child: Container(
                padding: EdgeInsets.symmetric(
                  horizontal: 30.0,
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: Container(
                        decoration: BoxDecoration(
                            color: Colors.blue,
                            borderRadius: BorderRadius.circular(10.0)),
                        child: TextButton(
                          onPressed: () {
                            print('Button Pressed');
                          },
                          child: Text(
                            'Chat',
                            style: TextStyle(color: Colors.white, fontSize: 18),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 20.0,
                    ),
                    Expanded(
                      child: Container(
                        decoration: BoxDecoration(
                            color: Colors.blue,
                            borderRadius: BorderRadius.circular(10.0)),
                        child: TextButton(
                          onPressed: () {
                            print('Button Pressed');
                          },
                          child: Text(
                            'Message',
                            style: TextStyle(color: Colors.white, fontSize: 18),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 10.0,
            ),
          ],
        ),
      ),
    );
  }
}
