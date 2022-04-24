import 'package:flutter/material.dart';

class Labels extends StatelessWidget {
  final String ruta;
  final String haveAccount;
  final String actionText;

  const Labels({Key? key, required this.ruta, required this.haveAccount,
  required this.actionText}) :
        super(key:
key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          Text(
            haveAccount,
            style: TextStyle(
                color: Colors.black54,
                fontSize: 15,
                fontWeight: FontWeight.w300),
          ),
          SizedBox(
            height: 10.0,
          ),
          GestureDetector(
            child: Text(
              actionText,
              style: TextStyle(
                color: Colors.blue[600],
                fontSize: 18.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            onTap: () {
              Navigator.popAndPushNamed(context, ruta);
            },
          )
        ],
      ),
    );
  }
}
