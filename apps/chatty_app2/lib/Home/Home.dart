import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurpleAccent,
      body: SafeArea(
        child: Column(
          children: [
            Container(
              width: double.infinity,
              height: 150,
              decoration: BoxDecoration(
                color: Colors.blueAccent,
                borderRadius:
                    BorderRadius.vertical(bottom: Radius.circular(20)),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    child: Image.asset(
                      'assets/images/profile2.png',
                      height: 50,
                      width: 50,
                    ),
                  ),
                  Container(
                    child: Text(
                      'Jhon Alexander',
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.bold),
                    ),
                  ),
                  Container(
                    child: Image.asset(
                      'assets/images/profile1.png',
                      height: 50,
                      width: 50,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),

            //---- FIRST CHAT
            Column(
              children: [
                Container(
                  height: 125,
                  width: double.infinity,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Container(
                        child: Image.asset(
                          'assets/images/profile3.png',
                          height: 50,
                          width: 50,
                        ),
                      ),
                      Container(
                        height: 90,
                        width: 300,
                        decoration: BoxDecoration(
                          color: Colors.amber,
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(15.0),
                            topRight: Radius.circular(15.0),
                            bottomRight: Radius.circular(15.0),
                          ),
                        ),
                        padding: EdgeInsets.all(30),
                        child: Text('hello, my name is jhon'),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 15,
            ),
            Column(
              children: [
                Container(
                  height: 125,
                  width: double.infinity,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Container(
                        child: Image.asset(
                          'assets/images/profile2.png',
                          height: 50,
                          width: 50,
                        ),
                      ),
                      Container(
                        height: 90,
                        width: 300,
                        decoration: BoxDecoration(
                          color: Colors.amber,
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(15.0),
                            topRight: Radius.circular(15.0),
                            bottomRight: Radius.circular(15.0),
                          ),
                        ),
                        padding: EdgeInsets.all(30),
                        child: Text('hello, my name is jhon'),
                      ),
                    ],
                  ),
                ),
              ],
            ),

            //------ CHAT 3
            Column(
              children: [
                Container(
                  height: 125,
                  width: double.infinity,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Container(
                        height: 90,
                        width: 300,
                        decoration: BoxDecoration(
                          color: Colors.amber,
                          borderRadius: BorderRadius.only(
                            topRight: Radius.circular(15.0),
                            topLeft: Radius.circular(15.0),
                            bottomLeft: Radius.circular(15.0),
                          ),
                        ),
                        padding: EdgeInsets.all(30),
                        child: Text('hello, my name is jhon'),
                      ),
                      Container(
                        child: Image.asset(
                          'assets/images/profile2.png',
                          height: 50,
                          width: 50,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 5,
            ),
            Column(
              children: [
                Padding(
                  padding: EdgeInsets.all(10),
                  child: Container(
                    height: 65,
                    decoration: BoxDecoration(
                        color: Colors.green,
                        borderRadius: BorderRadius.circular(15)),
                    padding: EdgeInsets.symmetric(horizontal: 15),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          child: Text(
                            'Enter message...',
                            style: TextStyle(color: Colors.white, fontSize: 15),
                          ),
                        ),
                        Container(
                            child: Icon(
                          Icons.send,
                          color: Colors.white,
                        )),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
