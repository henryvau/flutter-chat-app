import 'package:flutter/material.dart';

class BotonAzul extends StatelessWidget {
  final String text;
  final void Function()? onPressed;

  const BotonAzul({Key? key, required this.text, required this.onPressed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      child: Container(
        width: double.infinity,
        height: 20,
        child: Center(
          child: Text(this.text),
        ),
      ),
      onPressed:onPressed,
      style: ElevatedButton.styleFrom(
          elevation: 5.0,
          shape: StadiumBorder(),
          primary: Colors.blue,
          padding: EdgeInsets.symmetric(horizontal: 50, vertical: 20),
          textStyle: TextStyle(
            color: Colors.white,
            fontSize: 17,
          )),
    );
  }
  void callBack() {
    print("ssss");
  }
}
