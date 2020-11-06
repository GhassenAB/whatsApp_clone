import 'package:flutter/material.dart';
import 'package:whatsapp_clone/presentation/widgets/theme/style.dart';

import 'screens.dart';

class WelcomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          margin: const EdgeInsets.symmetric(
            horizontal: 20.0,
            vertical: 20.0,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Welcome to WhatsApp Clone',
                style: TextStyle(
                  fontSize: 20.0,
                  color: primaryColor,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Container(
                color: Colors.transparent,
                child: Image.asset(
                  'assets/brand.png',
                  height: 290.0,
                  width: 290.0,
                ),
              ),
              Column(
                children: <Widget>[
                  Text(
                    "Read our Privacy Policy Tap, 'Agree and continue' to accept the Terms of Service",
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 14),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  MaterialButton(
                    color: greenColor,
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (_) => RegistrationScreen(),
                        ),
                      );
                    },
                    child: Text(
                      "AGREE AND CONTINUE",
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.white,
                      ),
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
