import 'package:flutter/material.dart';
import 'package:chatty_app/pages/theme.dart';

class ChatTile extends StatelessWidget {
  String imageUrl = '';
  String name = '';
  String text = '';
  String time = '';
  bool unread;

  ChatTile(this.imageUrl, this.name, this.text, this.time, this.unread);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.only(top: 16.0),
        child: Row(
          children: [
            Image.asset(
              imageUrl,
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
                  name,
                  style: titleTextStyle,
                ),
                Text(
                  text,
                  style: unread
                      ? subtitleTextStyle.copyWith(color: blackColor)
                      : subtitleTextStyle,
                ),
              ],
            ),
            Spacer(),
            Text(
              time,
              style: subtitleTextStyle,
            )
          ],
        ),
      ),
    );
  }
}
