import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:travel_p/chitiet_luu_tru.dart';
import 'package:travel_p/home_tab.dart';
import 'package:travel_p/main.dart';

class luu_tru extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return luu_truState();
  }
}

class luu_truState extends State<luu_tru> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView(
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: EdgeInsets.all(10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        TextButton(
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            child: Container(
                              width: 150,
                              height: 80,
                              child: Image.asset("images/logo-ver3.png"),
                            ))
                      ],
                    ),
                    Row(
                      children: [
                        TextButton(
                            onPressed: () {},
                            child: CircleAvatar(
                              radius: 35,
                              backgroundImage: AssetImage("images/a.jpg"),
                            ))
                      ],
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 5),
                decoration: BoxDecoration(
                    border: Border.fromBorderSide(
                        BorderSide(width: 1, color: Colors.grey))),
              ),
              Container(
                padding: EdgeInsets.all(30),
                child: Text(
                  "LƯU TRÚ",
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.blueAccent),
                ),
              ),
              Row(
                children: [
                  Padding(
                    padding: EdgeInsets.all(10),
                    child: SizedBox(
                      width: 360,
                      child: TextField(
                        decoration: InputDecoration(
                            hintText: "Nhập điểm cần đến....",
                            prefixIcon: Icon(
                              Icons.place,
                              color: Colors.blueAccent,
                            )),
                      ),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: EdgeInsets.only(left: 15),
                child: TextButton(
                    onPressed: () {},
                    child: Row(
                      children: [
                        Icon(Icons.near_me_outlined),
                        Container(
                          margin: EdgeInsets.only(left: 10),
                          child: Text(
                            "Sử dụng vị trí của bạn ngay bây giờ",
                            style: TextStyle(color: Colors.grey, fontSize: 17),
                          ),
                        )
                      ],
                    )),
              ),
            ],
          ),
          Container(
            padding: EdgeInsets.only(left: 20, top: 15, bottom: 10),
            child: Text(
              "Hồ Chí Minh",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ),
          TextButton(
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => chitiet_luutru()));
            },
            child: Expanded(
                child: Column(
              children: [
                Container(
                  padding: EdgeInsets.all(10),
                  child: Image.asset(
                    "images/z.jpg",
                    height: 150,
                    width: 400,
                    fit: BoxFit.cover,
                  ),
                ),
                Row(
                  children: [
                    Container(
                      padding: EdgeInsets.only(left: 30),
                      child: Text("Khách Sạn Wano"),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 15),
                      child: TextButton(
                          onPressed: () {},
                          child: Row(
                            children: [Icon(Icons.place), Text("Ho Chi Minh")],
                          )),
                    ),
                    Expanded(
                      child: SizedBox(),
                    ),
                    Padding(
                      padding: EdgeInsets.only(right: 10),
                      child: TextButton(
                          onPressed: () {},
                          child: Row(
                            children: [
                              Icon(Icons.access_time_outlined),
                              Text("12 a.m - 10 p.m")
                            ],
                          )),
                    ),
                  ],
                ),
              ],
            )),
          ),
          Container(
            margin: EdgeInsets.only(top: 5),
            decoration: BoxDecoration(
                border: Border.fromBorderSide(
                    BorderSide(width: 1, color: Colors.grey))),
          ),
          TextButton(
            onPressed: () {},
            child: Expanded(
                child: Column(
              children: [
                Container(
                  padding: EdgeInsets.all(10),
                  child: Image.asset(
                    "images/z.jpg",
                    height: 150,
                    width: 400,
                    fit: BoxFit.cover,
                  ),
                ),
                Row(
                  children: [
                    Container(
                      padding: EdgeInsets.only(left: 30),
                      child: Text("Khách Sạn Wano"),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 15),
                      child: TextButton(
                          onPressed: () {},
                          child: Row(
                            children: [Icon(Icons.place), Text("Ho Chi Minh")],
                          )),
                    ),
                    Expanded(
                      child: SizedBox(),
                    ),
                    Padding(
                      padding: EdgeInsets.only(right: 10),
                      child: TextButton(
                          onPressed: () {},
                          child: Row(
                            children: [
                              Icon(Icons.access_time_outlined),
                              Text("12 a.m - 10 p.m")
                            ],
                          )),
                    ),
                  ],
                ),
              ],
            )),
          ),
          Container(
            margin: EdgeInsets.only(top: 5),
            decoration: BoxDecoration(
                border: Border.fromBorderSide(
                    BorderSide(width: 1, color: Colors.grey))),
          ),
          TextButton(
            onPressed: () {},
            child: Expanded(
                child: Column(
              children: [
                Container(
                  padding: EdgeInsets.all(10),
                  child: Image.asset(
                    "images/z.jpg",
                    height: 150,
                    width: 400,
                    fit: BoxFit.cover,
                  ),
                ),
                Row(
                  children: [
                    Container(
                      padding: EdgeInsets.only(left: 30),
                      child: Text("Khách Sạn Wano"),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 15),
                      child: TextButton(
                          onPressed: () {},
                          child: Row(
                            children: [Icon(Icons.place), Text("Ho Chi Minh")],
                          )),
                    ),
                    Expanded(
                      child: SizedBox(),
                    ),
                    Padding(
                      padding: EdgeInsets.only(right: 10),
                      child: TextButton(
                          onPressed: () {},
                          child: Row(
                            children: [
                              Icon(Icons.access_time_outlined),
                              Text("12 a.m - 10 p.m")
                            ],
                          )),
                    ),
                  ],
                ),
              ],
            )),
          ),
        ],
      ),
    );
  }
}
