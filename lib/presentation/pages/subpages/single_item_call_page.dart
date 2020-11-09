import 'package:flutter/material.dart';
import 'package:whatsapp_clone/presentation/widgets/theme/style.dart';

class SingleItemCallPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10.0, top: 4.0, right: 8.0),
      child: Column(
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
                    style:
                        TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.call_received,
                        color: primaryColor,
                        size: 16.0,
                      ),
                      Text(
                        'Yesterday',
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ],
                  ),
                ],
              ),
              Spacer(),
              Icon(
                Icons.call,
                color: primaryColor,
              )
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(left: 60.0, right: 10.0),
            child: Divider(thickness: 1.5),
          )
        ],
      ),
    );
  }
}
