import 'package:flutter/material.dart';
import 'package:whatsapp_clone/presentation/widgets/theme/style.dart';

class SetInitialProfilePage extends StatefulWidget {
  @override
  _SetInitialProfilePageState createState() => _SetInitialProfilePageState();
}

class _SetInitialProfilePageState extends State<SetInitialProfilePage> {
  TextEditingController _nameController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          margin: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 20.0),
          child: Column(
            children: [
              Text(
                'Profile Info',
                style: TextStyle(
                  fontSize: 18.0,
                  color: greenColor,
                  fontWeight: FontWeight.w500,
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Text(
                "Please provide your name and an optional Profile photo",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 15,
                ),
              ),
              SizedBox(
                height: 30,
              ),
              _rowWidget(),
              Expanded(
                child: Align(
                  alignment: Alignment.bottomCenter,
                  child: MaterialButton(
                    color: greenColor,
                    onPressed: () {},
                    child: Text(
                      "Next",
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget _rowWidget() {
    return Container(
      child: Row(
        children: <Widget>[
          Container(
            width: 50,
            height: 50,
            decoration: BoxDecoration(
                color: textIconColorGray,
                borderRadius: BorderRadius.all(Radius.circular(25))),
            child: Icon(Icons.camera_alt),
          ),
          SizedBox(
            width: 8,
          ),
          Expanded(
            child: TextField(
              controller: _nameController,
              decoration: InputDecoration(
                hintText: "Enter your name",
              ),
            ),
          ),
          SizedBox(
            width: 8.0,
          ),
          Container(
            width: 35,
            height: 35,
            decoration: BoxDecoration(
                color: textIconColorGray,
                borderRadius: BorderRadius.all(Radius.circular(25))),
            child: Icon(Icons.insert_emoticon),
          )
        ],
      ),
    );
  }

  @override
  void dispose() {
    _nameController.dispose();
    super.dispose();
  }
}
