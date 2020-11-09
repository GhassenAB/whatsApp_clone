import 'package:flutter/material.dart';

class SingleItemChatPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Container(
              height: 55,
              width: 55,
              child: ClipRRect(
                borderRadius: BorderRadius.all(Radius.circular(25)),
                child: Image.asset('assets/profile_default.png'),
              ),
            ),
            SizedBox(width: 10.0),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'User Name',
                  style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
                ),
                Text(
                  'Hi there i\'m using this app',
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
              ],
            ),
            Spacer(),
            Text('12:47 AM')
          ],
        ),
        Padding(
          padding: const EdgeInsets.only(left: 60.0, right: 10.0),
          child: Divider(thickness: 1.5),
        )
      ],
    );
  }
}
