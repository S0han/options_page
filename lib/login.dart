import 'package:flutter/material.dart';
import 'package:login69/custom.dart';

// ignore: camel_case_types
class loginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white60,
        leading: Container(
          child: Row(
            children: [
              Container(
                child: InkWell(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: IconTheme(
                      data: new IconThemeData(color: Colors.black),
                      child: Icon(Icons.arrow_back_ios_outlined)),
                ),
              ),
              SizedBox(
                width: 10,
              ),
              Text(
                'My Account',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 18,
                  fontWeight: FontWeight.normal,
                ),
              ),
            ],
          ),
        ),
        title: Text(
          'Settings',
          style: TextStyle(
            color: Colors.black,
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Column(
        children: [
          CustRow(item: 'Profile Information', customRoute: 'privacy'),
          CustRow(item: 'Privacy Policy', customRoute: 'hoes'),
          CustRow(item: 'Help', customRoute: 'bros'),
          CustRow(item: 'About FoodDiscovery', customRoute: 'toes'),
          CustRow(item: 'Terms & Conditions', customRoute: 'khalil'),
          Container(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Log out',
                    style: TextStyle(
                        color: Colors.orange, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
