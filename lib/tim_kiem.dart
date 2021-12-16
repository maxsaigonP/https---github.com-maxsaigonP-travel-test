import 'package:flutter/material.dart';

class search_tab extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return search_tabState();
  }
}

class search_tabState extends State<search_tab> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Column(
          children: [
            Padding(
              padding: EdgeInsets.all(10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      TextButton(
                          onPressed: () {},
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
                            radius: 40,
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
                    width: 280,
                    child: TextField(
                      decoration: InputDecoration(
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(15)),
                          hintText: "Nhập điểm cần đến....",
                          prefixIcon: Icon(Icons.place)),
                    ),
                  ),
                ),
                Container(
                  height: 55,
                  width: 55,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(width: 1, color: Colors.blueAccent)),
                  child: IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.search_outlined,
                          color: Colors.blueAccent)),
                )
              ],
            ),
            Container(
                height: 300,
                width: 300,
                padding: EdgeInsets.all(10),
                margin: EdgeInsets.only(right: 20),
                child: Column(
                  children: [
                    Table(
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
                    )
                  ],
                )),
          ],
        )
      ],
    );
  }
}
