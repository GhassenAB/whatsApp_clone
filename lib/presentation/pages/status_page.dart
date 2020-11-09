import 'package:flutter/material.dart';
import 'package:whatsapp_clone/presentation/pages/subpages/single_item_story_page.dart';
import 'package:whatsapp_clone/presentation/widgets/theme/style.dart';

class StatusPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          _customFloatingActionButton(),
          SingleChildScrollView(
            child: Column(
              children: [
                _storyWidget(),
                SizedBox(height: 8.0),
                _recentTextWidget(),
                SizedBox(height: 8.0),
                _listStories(),
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget _customFloatingActionButton() {
    return Positioned(
      right: 10,
      bottom: 15,
      child: Column(
        children: [
          Container(
            height: 45.0,
            width: 45.0,
            decoration: BoxDecoration(
              color: Colors.grey[200],
              borderRadius: BorderRadius.all(Radius.circular(25)),
              boxShadow: [
                BoxShadow(
                  offset: Offset(0, 4.0),
                  blurRadius: 0.5,
                  color: Colors.black.withOpacity(0.2),
                  spreadRadius: 0.1,
                ),
              ],
            ),
            child: Icon(
              Icons.edit,
              color: Colors.blueGrey,
            ),
          ),
          SizedBox(height: 10.0),
          Container(
            height: 55.0,
            width: 55.0,
            decoration: BoxDecoration(
              color: primaryColor,
              borderRadius: BorderRadius.all(Radius.circular(30)),
              boxShadow: [
                BoxShadow(
                  offset: Offset(0, 4.0),
                  blurRadius: 0.5,
                  color: Colors.black.withOpacity(0.2),
                  spreadRadius: 0.1,
                ),
              ],
            ),
            child: Icon(
              Icons.camera_alt,
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }

  Widget _storyWidget() {
    return Container(
      margin: const EdgeInsets.only(left: 10.0, right: 10.0, top: 4.0),
      child: Row(
        children: [
          Container(
            height: 55.0,
            width: 55.0,
            child: Stack(
              children: [
                Padding(
                  padding: const EdgeInsets.all(2.0),
                  child: Image.asset('assets/profile_default.png'),
                ),
                Positioned(
                  right: 0,
                  bottom: 0,
                  child: Container(
                    height: 20.0,
                    width: 20.0,
                    decoration: BoxDecoration(
                        color: primaryColor,
                        borderRadius: BorderRadius.all(Radius.circular(10))),
                    child: Icon(
                      Icons.add,
                      color: Colors.white,
                      size: 15,
                    ),
                  ),
                )
              ],
            ),
          ),
          SizedBox(width: 12.0),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'My Status',
                style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
              ),
              Text(
                'Tap to add status update',
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _recentTextWidget() {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 4.0),
      decoration: BoxDecoration(
        color: Colors.grey[200],
      ),
      child: Text('Recent updates'),
    );
  }

  Widget _listStories() {
    return ListView.builder(
      itemCount: 10,
      shrinkWrap: true,
      physics: ScrollPhysics(),
      itemBuilder: (_, index) {
        return SingleItemStoryPage();
      },
    );
  }
}
