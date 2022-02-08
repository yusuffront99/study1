import 'package:chatty_app/pages/theme.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: blueColor,
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              SizedBox(
                height: 40,
              ),
              Image.asset(
                'assets/images/profile1.png',
                height: 100,
                width: 100,
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                'Jhon Alexander',
                style: TextStyle(
                  fontSize: 20,
                  color: whiteColor,
                ),
              ),
              SizedBox(
                height: 2,
              ),
              Text(
                'Travel Freelancer',
                style: TextStyle(
                  color: lightblueColor,
                  fontSize: 16,
                ),
              ),

              //========= BODY
              SizedBox(
                height: 30,
              ),
              Container(
                width: double.infinity,
                height: 300,
                padding: EdgeInsets.all(30),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius:
                        BorderRadius.vertical(top: Radius.circular(40))),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Friends',
                      style: titleTextStyle,
                    ),
                    SizedBox(
                      height: 16,
                    ),
                    Row(
                      children: [
                        Image.asset(
                          'assets/images/profile2.png',
                          width: 55,
                          height: 55,
                        ),
                        SizedBox(
                          width: 12,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Andreas',
                              style: titleTextStyle,
                            ),
                            Text(
                              'Hello, my name is andreas',
                              style: subtitleTextStyle,
                            )
                          ],
                        ),
                        Spacer(),
                        Text(
                          'now',
                          style: subtitleTextStyle,
                        )
                      ],
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
