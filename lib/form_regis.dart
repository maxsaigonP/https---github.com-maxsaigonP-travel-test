import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class form_regis extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return form_regisState();
  }
}

class form_regisState extends State<form_regis> {
  bool check = true;
  bool checkPass = true;
  bool checkRePass = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            leading: IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: Icon(
                  Icons.arrow_back,
                  color: Colors.blueAccent,
                )),
            backgroundColor: Colors.white,
            shadowColor: Colors.white,
            title: Container(
              margin: EdgeInsets.only(left: 75),
              child: Text(
                "Đăng ký",
                style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    color: Colors.blueAccent),
              ),
            )),
        body: ListView(
          children: [
            Column(
              children: [
                Container(
                  alignment: Alignment.centerLeft,
                  padding: EdgeInsets.only(top: 50, left: 15),
                  child: Text(
                    "Họ tên",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(left: 15, bottom: 15, right: 15),
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: "Nhập họ tên",
                    ),
                  ),
                ),
                Container(
                  alignment: Alignment.centerLeft,
                  padding: EdgeInsets.only(top: 10, left: 15),
                  child: Text(
                    "Email",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(left: 15, bottom: 15, right: 15),
                  child: TextField(
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                      hintText: "Nhập email",
                    ),
                  ),
                ),
                Container(
                  alignment: Alignment.centerLeft,
                  padding: EdgeInsets.only(top: 10, left: 15),
                  child: Text(
                    "Số điên thoại",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(left: 15, bottom: 15, right: 15),
                  child: TextField(
                    keyboardType: TextInputType.phone,
                    decoration: InputDecoration(
                      hintText: "Nhập số điện thoại",
                    ),
                  ),
                ),
                Container(
                  alignment: Alignment.centerLeft,
                  padding: EdgeInsets.only(top: 10, left: 15),
                  child: Text(
                    "Mật khẩu",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(left: 15, bottom: 15, right: 15),
                  child: TextField(
                    obscureText: checkPass ? true : false,
                    decoration: InputDecoration(
                      suffixIcon: IconButton(
                        onPressed: () {
                          setState(() {});
                          checkPass = !checkPass;
                        },
                        icon: checkPass
                            ? Icon(
                                Icons.visibility_off,
                                color: Colors.black,
                              )
                            : Icon(
                                Icons.remove_red_eye_outlined,
                                color: Colors.black,
                              ),
                      ),
                      hintText: "Nhập mật khẩu",
                    ),
                  ),
                ),
                Container(
                  alignment: Alignment.centerLeft,
                  padding: EdgeInsets.only(top: 10, left: 15),
                  child: Text(
                    "Xác nhận mật khẩu",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(left: 15, bottom: 15, right: 15),
                  child: TextField(
                    obscureText: checkRePass ? true : false,
                    decoration: InputDecoration(
                      suffixIcon: IconButton(
                        onPressed: () {
                          setState(() {});
                          checkRePass = !checkRePass;
                        },
                        icon: checkRePass
                            ? Icon(
                                Icons.visibility_off,
                                color: Colors.black,
                              )
                            : Icon(
                                Icons.remove_red_eye_outlined,
                                color: Colors.black,
                              ),
                      ),
                      hintText: "Nhập lại mật khẩu",
                    ),
                  ),
                ),
                Container(
                  width: 360,
                  padding: EdgeInsets.all(5),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.blueAccent),
                  child: TextButton(
                    onPressed: () {},
                    child: Text(
                      "Đăng Ký",
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ));
  }
}
