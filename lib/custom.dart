import 'package:flutter/material.dart';
import 'package:login69/login.dart';
import 'package:login69/textviewer.dart';

class CustRow extends StatelessWidget {
  String item;
  String customRoute;

  CustRow({Key? key, required this.item, required this.customRoute})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => TextViewer(msg: customRoute)),
        );
      },
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(
            color: Colors.grey,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(item),
              Icon(
                Icons.chevron_right_outlined,
                color: Colors.grey,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
