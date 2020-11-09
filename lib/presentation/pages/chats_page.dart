import 'package:flutter/material.dart';
import 'package:whatsapp_clone/presentation/pages/subpages/single_item_chat_page.dart';

class ChatsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: 10,
              itemBuilder: (_, index) {
                return SingleItemChatPage();
              },
            ),
          )
        ],
      ),
    );
  }
}
