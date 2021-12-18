import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/rendering.dart';
import 'package:travel_p/chitiet_dia_danh.dart';

class dia_danh extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return dia_danhState();
  }
}

class dia_danhState extends State<dia_danh> {
  @override
  Widget build(BuildContext context) {
    CarouselSlider slideShow(List<Column> lst) {
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
              Container(
                padding: EdgeInsets.only(left: 15),
                child: Text(
                  title,
                  style: TextStyle(
                      color: Colors.blueAccent,
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
              )
            ],
          ),
          Row(
            children: [],
          )
        ],
      );
    }

    final List<Column> imgListDiaDanhQuangNinh = [
      Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Stack(
            alignment: Alignment.center,
            children: [
              TextButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => chitiet_diadanh()));
                },
                child: Container(
                  child: Card(
                    shape: RoundedRectangleBorder(
                        borderRadius:
                            BorderRadiusDirectional.all(Radius.circular(16))),
                    clipBehavior: Clip.antiAlias,
                    child: Image.asset(
                      "images/z.jpg",
                      width: double.maxFinite,
                    ),
                  ),
                ),
              ),
              Positioned(
                  top: 145,
                  left: 25,
                  child: Row(
                    children: [
                      Icon(
                        Icons.place,
                        color: Colors.red,
                      ),
                      Container(
                        padding: EdgeInsets.all(5),
                        child: Text(
                          "Vịnh Hạ Long",
                          style: TextStyle(color: Colors.white),
                        ),
                      )
                    ],
                  ))
            ],
          ),
          Expanded(
            child: SizedBox(),
          ),
        ],
      )
    ];
    final List<Column> imgListDiaDanhLongAn = [
      Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Stack(
            alignment: Alignment.center,
            children: [
              Container(
                child: Card(
                  shape: RoundedRectangleBorder(
                      borderRadius:
                          BorderRadiusDirectional.all(Radius.circular(16))),
                  clipBehavior: Clip.antiAlias,
                  child: Image.asset(
                    "images/z.jpg",
                    width: double.maxFinite,
                  ),
                ),
              ),
              Positioned(
                  top: 145,
                  left: 25,
                  child: Row(
                    children: [
                      Icon(
                        Icons.place,
                        color: Colors.red,
                      ),
                      Container(
                        padding: EdgeInsets.all(5),
                        child: Text(
                          "Long An",
                          style: TextStyle(color: Colors.white),
                        ),
                      )
                    ],
                  ))
            ],
          ),
          Expanded(
            child: SizedBox(),
          ),
        ],
      )
    ];
    bool checkFloat = false;
    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView(
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
                          radius: 35,
                          backgroundImage: AssetImage("images/a.jpg"),
                        ))
                  ],
                )
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
            margin: EdgeInsets.only(left: 125),
            child: Text(
              "Địa Danh",
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
                        hintText: "Nhập địa điểm cần đến...",
                        prefixIcon: Icon(
                          Icons.place,
                          color: Colors.blueAccent,
                        )),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 15,
          ),
          sliderTitle("Quảng Ninh"),
          SizedBox(
            height: 25,
          ),
          slideShow(imgListDiaDanhQuangNinh),
          SizedBox(
            height: 15,
          ),
          sliderTitle("Long An"),
          SizedBox(
            height: 25,
          ),
          slideShow(imgListDiaDanhLongAn),
          SizedBox(
            height: 15,
          ),
          sliderTitle("Long An"),
          SizedBox(
            height: 25,
          ),
          slideShow(imgListDiaDanhLongAn)
        ],
      ),
    );
  }
}
