import 'package:flutter/material.dart';

class trang_ca_nhan extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return trang_ca_nhanState();
  }
}

class trang_ca_nhanState extends State<trang_ca_nhan> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Stack(
          clipBehavior: Clip.none,
          alignment: Alignment.center,
          children: [
            Container(
              child: Image.asset(
                "images/z.jpg",
                fit: BoxFit.cover,
              ),
            ),
            Positioned(
                top: 175,
                left: 20,
                child: CircleAvatar(
                  radius: 45,
                  backgroundImage: AssetImage(
                    "images/a.jpg",
                  ),
                )),
            Positioned(
              top: 220,
              left: 75,
              child: IconButton(
                  onPressed: () {},
                  icon: Container(
                      width: 30,
                      height: 30,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.white,
                      ),
                      child: Icon(
                        Icons.camera_alt,
                        size: 20,
                      ))),
            ),
            Positioned(
              top: 170,
              right: 10,
              child: IconButton(
                  onPressed: () {},
                  icon: Container(
                      width: 30,
                      height: 30,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.white,
                      ),
                      child: Icon(
                        Icons.camera_alt,
                        size: 20,
                      ))),
            )
          ],
        ),
        SizedBox(
          height: 55,
        ),
        Container(
          padding: EdgeInsets.only(left: 15, bottom: 10),
          child: Text(
            "Phuc Nguyen",
            style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
          ),
        ),
        Container(
          margin: EdgeInsets.only(top: 5),
          decoration: BoxDecoration(
              border: Border.fromBorderSide(
                  BorderSide(width: 1, color: Colors.grey.shade300))),
        ),
        TextButton(
            onPressed: () {},
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [Icon(Icons.border_all), Text("Bài viết đã chia sẻ")],
            )),
        Container(
          margin: EdgeInsets.only(top: 5),
          decoration: BoxDecoration(
              border: Border.fromBorderSide(
                  BorderSide(width: 2.5, color: Colors.grey.shade300))),
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
