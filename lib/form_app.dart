import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:travel_p/form_login.dart';
import 'package:travel_p/form_regis.dart';

class form_app extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return form_appState();
  }
}

class form_appState extends State<form_app> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: Align(
          alignment: Alignment.center,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
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
                    color: Color(0XFF0869E1)),
                child: TextButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => form_login()));
                  },
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
                  border: Border.all(color: Color(0XFF0869E1)),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: TextButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => form_regis()));
                  },
                  child: Text("Đăng Ký",
                      style: TextStyle(color: Color(0XFF0869E1), fontSize: 20)),
                ),
              )
            ],
          ),
        ));
  }
}
