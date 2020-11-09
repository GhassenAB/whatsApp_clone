import 'package:flutter/material.dart';
import 'package:whatsapp_clone/presentation/pages/subpages/single_item_call_page.dart';
import 'package:whatsapp_clone/presentation/widgets/theme/style.dart';

class CallsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: 10,
              itemBuilder: (_, index) {
                return SingleItemCallPage();
              },
            ),
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: primaryColor,
        onPressed: () {},
        child: Icon(
          Icons.add_call,
          color: Colors.white,
        ),
      ),
    );
  }
}
