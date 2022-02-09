import 'package:chatty_app/pages/theme.dart';
import 'package:chatty_app/widgets/chat_tile.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: blueColor,
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: greenColor,
        child: Icon(
          Icons.add,
          size: 28,
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
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
                  height: 500,
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
                      ChatTile('assets/images/profile2.png', 'Alexander',
                          'Hello, my name is alexander', 'now', true),
                      ChatTile('assets/images/profile3.png', 'Aminah',
                          'Hello, my name is aminah', 'now', false),
                      SizedBox(
                        height: 30,
                      ),
                      Text(
                        'Groups',
                        style: titleTextStyle,
                      ),
                      ChatTile('assets/images/group.png', 'Camp Group',
                          'Hello, my name is alexander', '11.11', true),
                      ChatTile('assets/images/group.png', 'Camp Group',
                          'Hello, my name is alexander', '09.23', true),
                      ChatTile('assets/images/group.png', 'Camp Group',
                          'Hello, my name is alexander', '09.23', true),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
