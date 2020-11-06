import 'package:country_pickers/country.dart';
import 'package:country_pickers/country_pickers.dart';
import 'package:flutter/material.dart';
import 'package:whatsapp_clone/presentation/pages/phone_verification_page.dart';
import 'package:whatsapp_clone/presentation/widgets/theme/style.dart';

class RegistrationScreen extends StatefulWidget {
  @override
  _RegistrationScreenState createState() => _RegistrationScreenState();
}

class _RegistrationScreenState extends State<RegistrationScreen> {
  Country _selectedFilteredDialogCountry =
      CountryPickerUtils.getCountryByPhoneCode("216");
  String _countryCode = "+216";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          margin: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 20.0),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Verify your phone number',
                    style: TextStyle(
                      fontSize: 18.0,
                      color: greenColor,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  Icon(Icons.more_vert),
                ],
              ),
              SizedBox(
                height: 30,
              ),
              Text(
                "WhatsApp Clone will send and SMS message (carrier charges may apply) to verify your phone number. Enter your country code and phone number:",
                style: TextStyle(
                  fontSize: 15,
                ),
              ),
              SizedBox(
                height: 30,
              ),
              ListTile(
                onTap: _openFilteredCountryPickerDialog,
                title: _buildDialogItem(_selectedFilteredDialogCountry),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Row(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        border: Border(
                          bottom: BorderSide(color: greenColor, width: 1.5),
                        ),
                      ),
                      width: 80.0,
                      height: 42.0,
                      alignment: Alignment.center,
                      child:
                          Text('+${_selectedFilteredDialogCountry.phoneCode}'),
                    ),
                    SizedBox(width: 8.0),
                    Expanded(
                      child: Container(
                        height: 40.0,
                        child: TextField(
                          decoration: InputDecoration(hintText: 'Phone Number'),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Align(
                  alignment: Alignment.bottomCenter,
                  child: MaterialButton(
                    color: greenColor,
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (_) => PhoneVerificationPage(),
                        ),
                      );
                    },
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

  void _openFilteredCountryPickerDialog() {
    showDialog(
        context: context,
        builder: (_) => Theme(
              data: Theme.of(context).copyWith(primaryColor: primaryColor),
              child: CountryPickerDialog(
                  titlePadding: EdgeInsets.all(8.0),
                  searchCursorColor: Colors.black,
                  searchInputDecoration: InputDecoration(hintText: 'Search...'),
                  title: Text('Select your phone code'),
                  isSearchable: true,
                  onValuePicked: (Country country) => setState(() {
                        _selectedFilteredDialogCountry = country;
                        _countryCode = country.phoneCode;
                      }),
                  itemBuilder: _buildDialogItem),
            ));
  }

  Widget _buildDialogItem(Country country) {
    return Container(
      height: 40.0,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(color: greenColor, width: 1),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(
            width: 80.0,
            alignment: Alignment.center,
            child: CountryPickerUtils.getDefaultFlagImage(country),
          ),
          SizedBox(width: 8.0),
          Expanded(
            child: Text(
              '${country.name}',
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
            ),
          ),
          Spacer(),
          Icon(Icons.arrow_drop_down)
        ],
      ),
    );
  }
}
