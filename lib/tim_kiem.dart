import 'package:flutter/material.dart';
import 'package:travel_p/main.dart';

class search_tab extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return search_tabState();
  }
}

class search_tabState extends State<search_tab> {
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
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => MyApp()));
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
                  "ĐIỂM ĐẾN",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
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
              Container(
                  height: 300,
                  padding: EdgeInsets.all(10),
                  margin: EdgeInsets.only(right: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: 65),
                        child: Table(
                          children: [
                            TableRow(children: [
                              Container(
                                height: 30,
                                child: Text("Long An"),
                              ),
                              Container(
                                height: 30,
                                child: Text("Long An"),
                              )
                            ]),
                            TableRow(children: [
                              Container(
                                height: 30,
                                child: Text("Long An"),
                              ),
                              Container(
                                height: 30,
                                child: Text("Long An"),
                              )
                            ]),
                            TableRow(children: [
                              Container(
                                height: 30,
                                child: Text("Long An"),
                              ),
                              Container(
                                height: 30,
                                child: Text("Long An"),
                              )
                            ]),
                            TableRow(children: [
                              Container(
                                height: 30,
                                child: Text("Long An"),
                              ),
                              Container(
                                height: 30,
                                child: Text("Long An"),
                              )
                            ]),
                            TableRow(children: [
                              Container(
                                height: 30,
                                child: Text("Long An"),
                              ),
                              Container(
                                height: 30,
                                child: Text("Long An"),
                              )
                            ]),
                            TableRow(children: [
                              Container(
                                height: 30,
                                child: Text("Long An"),
                              ),
                              Container(
                                height: 30,
                                child: Text("Long An"),
                              )
                            ]),
                          ],
                        ),
                      )
                    ],
                  ))
            ],
          )
        ],
      ),
    );
  }
}
