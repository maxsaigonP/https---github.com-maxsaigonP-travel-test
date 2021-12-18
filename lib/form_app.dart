import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class form_app extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return form_appState();
  }
}

class form_appState extends State<form_app> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: EdgeInsets.only(top: 35, bottom: 25),
          height: 150,
          width: 200,
          child: Image.asset("images/logo-ver3.png"),
        ),
        Container(
          height: 260,
          width: 350,
          child: Image.asset("images/logo-form.jpg"),
        ),
        SizedBox(
          height: 25,
        ),
        Container(
          width: 350,
          padding: EdgeInsets.all(5),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.blueAccent),
          child: TextButton(
            onPressed: () {},
            child: Text(
              "Đăng Nhập",
              style: TextStyle(color: Colors.white, fontSize: 20),
            ),
          ),
        ),
        SizedBox(
          height: 20,
        ),
        Container(
          width: 350,
          padding: EdgeInsets.all(5),
          decoration: BoxDecoration(
            border: Border.all(color: Colors.blueAccent),
            borderRadius: BorderRadius.circular(10),
          ),
          child: TextButton(
            onPressed: () {},
            child: Text("Đăng Ký",
                style: TextStyle(color: Colors.blueAccent, fontSize: 20)),
          ),
        )
      ],
    );
  }
}
