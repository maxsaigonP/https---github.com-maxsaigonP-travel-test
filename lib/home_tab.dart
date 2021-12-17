import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:travel_p/luu_tru.dart';
import 'dart:ui';

import 'package:travel_p/quan_an.dart';

class home_tab extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return home_tabState();
  }
}

class home_tabState extends State<home_tab> {
  final List<Image> imgListDiaDanh = [
    Image.asset(
      "images/z.jpg",
      height: 150,
      width: 250,
      fit: BoxFit.cover,
    ),
  ];
  final List<Image> imgListNhuCau = [
    Image.asset(
      "images/z.jpg",
      height: 150,
      width: 250,
      fit: BoxFit.cover,
    ),
  ];
  final List<Expanded> imgListQuanAn = [
    Expanded(
        child: Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Container(
          child: Image.asset(
            "images/z.jpg",
            height: 150,
            width: 250,
            fit: BoxFit.cover,
          ),
        ),
        Row(
          children: [
            Container(
              padding: EdgeInsets.only(left: 30),
              child: Text("Nhà Hàng ABC"),
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
        )
      ],
    ))
  ];
  final List<Expanded> imgListLuuTru = [
    Expanded(
        child: Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Container(
          child: Image.asset(
            "images/z.jpg",
            height: 150,
            width: 250,
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
        )
      ],
    ))
  ];
  CarouselSlider slideShow(List<Image> lst) {
    return CarouselSlider(
      items: lst,
      options: CarouselOptions(
          height: 220.0, autoPlay: false, enableInfiniteScroll: true),
    );
  }

  CarouselSlider slideShowQuan(List<Expanded> lst) {
    return CarouselSlider(
      items: lst,
      options: CarouselOptions(
          height: 220.0, autoPlay: false, enableInfiniteScroll: true),
    );
  }

  Row sliderTitle(String title) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            Text(
              title,
              style: TextStyle(color: Colors.blueAccent, fontSize: 20),
            )
          ],
        ),
        Row(
          children: [
            TextButton(
              onPressed: () {
                if (title == "Quán Ăn") {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => quan_an()));
                }
                if (title == "Lưu Trú") {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => luu_tru()));
                }
              },
              child: Text(
                "Xem thêm",
                style: TextStyle(fontSize: 15, color: Colors.blueAccent),
              ),
            )
          ],
        )
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Padding(
            padding: EdgeInsets.all(10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
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
                              radius: 35,
                              backgroundImage: AssetImage("images/a.jpg"),
                            ))
                      ],
                    )
                  ],
                ),
                Container(
                  margin: EdgeInsets.only(top: 5),
                  decoration: BoxDecoration(
                      border: Border.fromBorderSide(
                          BorderSide(width: 1, color: Colors.grey.shade300))),
                ),
                Row(
                  children: [
                    Container(
                      padding: EdgeInsets.all(15),
                      child: CircleAvatar(
                        radius: 25,
                        backgroundImage: AssetImage("images/a.jpg"),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.only(left: 5),
                      width: 280,
                      height: 40,
                      decoration: BoxDecoration(
                          border:
                              Border.all(width: 1, color: Colors.grey.shade300),
                          borderRadius: BorderRadius.all(Radius.circular(30))),
                      child: TextButton(
                          onPressed: () {},
                          child: Align(
                            alignment: Alignment.centerLeft,
                            child: Text("Chia sẻ địa danh..."),
                          )),
                    )
                  ],
                ),
                Container(
                  margin: EdgeInsets.only(top: 5),
                  decoration: BoxDecoration(
                      border: Border.fromBorderSide(
                          BorderSide(width: 1, color: Colors.grey.shade300))),
                ),
                SizedBox(
                  height: 25,
                ),
                sliderTitle("Địa Danh Nổi Bật"),
                SizedBox(
                  height: 15,
                ),
                slideShow(imgListDiaDanh),
                SizedBox(
                  height: 25,
                ),
                sliderTitle("Nhu Cầu"),
                SizedBox(
                  height: 15,
                ),
                slideShow(imgListNhuCau),
                SizedBox(
                  height: 25,
                ),
                sliderTitle("Quán Ăn"),
                SizedBox(
                  height: 15,
                ),
                slideShowQuan(imgListQuanAn),
                SizedBox(
                  height: 25,
                ),
                sliderTitle("Lưu Trú"),
                SizedBox(
                  height: 15,
                ),
                slideShowQuan(imgListLuuTru),
              ],
            )),
        SizedBox(
          height: 10,
        ),
        Container(
          padding: EdgeInsets.all(20),
          decoration: BoxDecoration(
              border: Border(
                  top: BorderSide(width: 1, color: Colors.grey.shade300),
                  bottom: BorderSide(width: 1, color: Colors.grey.shade300))),
          child: Text(
            "Bài Viết",
            style: TextStyle(fontSize: 20, color: Colors.blueAccent),
          ),
        ),
        Card(
          child: ListTile(
            leading: CircleAvatar(
              backgroundImage: AssetImage("images/a.jpg"),
            ),
            title: Text(
              "Phuc Nguyen",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            subtitle: Align(
              alignment: Alignment.centerLeft,
              child: Text("13 giờ"),
            ),
            trailing:
                IconButton(onPressed: () {}, icon: Icon(Icons.more_horiz)),
          ),
        ),
        Container(
          child: Image.asset("images/i.jpg"),
        ),
        Padding(
          padding: EdgeInsets.only(top: 10, bottom: 25, right: 25, left: 25),
          child: Text("Đẹp vl !"),
        ),
        Padding(
          padding: EdgeInsets.all(15),
          child: TextButton(
              onPressed: () {},
              child: Align(
                alignment: Alignment.centerLeft,
                child: Container(
                  padding: EdgeInsets.all(5),
                  decoration: BoxDecoration(
                      border: Border.all(width: 1, color: Colors.blueAccent),
                      borderRadius: BorderRadius.circular(5)),
                  child: Text("Ho Chi Minh City,Viet Nam"),
                ),
              )),
        ),
        Padding(
            padding: EdgeInsets.all(20),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Icon(Icons.remove_red_eye, color: Colors.grey.shade300),
                    Text("10k lượt xem")
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [Text("1.2k lượt thích")],
                    ),
                    Row(
                      children: [Text("56 lượt không thích")],
                    ),
                    Row(
                      children: [Text("5.6k lượt chia sẻ")],
                    )
                  ],
                ),
                Container(
                  margin: EdgeInsets.only(top: 10),
                  decoration: BoxDecoration(
                      border: Border.fromBorderSide(
                          BorderSide(width: 1, color: Colors.grey.shade300))),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        IconButton(
                          onPressed: () {},
                          icon: Icon(Icons.thumb_up_outlined,
                              color: Colors.grey.shade300),
                        ),
                        Text("Thích")
                      ],
                    ),
                    Row(
                      children: [
                        IconButton(
                          onPressed: () {},
                          icon: Icon(Icons.thumb_down_outlined,
                              color: Colors.grey.shade300),
                        ),
                        Text("Không thích")
                      ],
                    ),
                    Row(
                      children: [
                        IconButton(
                          onPressed: () {},
                          icon: Icon(Icons.share_outlined,
                              color: Colors.grey.shade300),
                        ),
                        Text("Chia sẻ")
                      ],
                    )
                  ],
                ),
                Container(
                  margin: EdgeInsets.only(top: 5),
                  decoration: BoxDecoration(
                      border: Border.fromBorderSide(
                          BorderSide(width: 1, color: Colors.grey.shade300))),
                )
              ],
            ))
      ],
    );
  }
}
