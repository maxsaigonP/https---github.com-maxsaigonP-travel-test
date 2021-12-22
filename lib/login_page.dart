import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:travel_p/changepw_page.dart';
import 'package:travel_p/home_tab.dart';
import 'package:travel_p/register_page.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return LoginPageState();
  }
}

class LoginPageState extends State<LoginPage> {
  bool check = true;
  bool checkPass = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          leading: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: const FaIcon(
                FontAwesomeIcons.arrowLeft,
                color: Color(0XFF0869E1),
              )),
          backgroundColor: Colors.white,
          shadowColor: Colors.white,
          title: Container(
            margin: const EdgeInsets.only(left: 66),
            child: const Text(
              "Đăng nhập",
              style: TextStyle(
                  fontSize: 27,
                  fontWeight: FontWeight.w700,
                  fontFamily: 'Roboto',
                  color: Color(0XFF0869E1)),
            ),
          )),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: [
              Container(
                alignment: Alignment.centerLeft,
                padding: const EdgeInsets.only(top: 20, left: 20, right: 20),
                child: const Text(
                  "Email",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                ),
              ),
              Container(
                padding: const EdgeInsets.only(left: 20, bottom: 20, right: 20),
                child: const TextField(
                  decoration: InputDecoration(
                    hintText: "Nhập email",
                  ),
                ),
              ),
              Container(
                alignment: Alignment.centerLeft,
                padding: const EdgeInsets.only(left: 20, right: 20),
                child: const Text(
                  "Mật khẩu",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                ),
              ),
              Container(
                padding: const EdgeInsets.only(left: 20, bottom: 20, right: 20),
                child: TextField(
                  obscureText: checkPass ? true : false,
                  decoration: InputDecoration(
                    suffixIcon: IconButton(
                      onPressed: () {
                        setState(() {});
                        checkPass = !checkPass;
                      },
                      icon: checkPass
                          ? const FaIcon(
                              FontAwesomeIcons.eyeSlash,
                              color: Color(0XFF050505),
                              size: 20,
                            )
                          : const FaIcon(
                              FontAwesomeIcons.eye,
                              color: Color(0XFF050505),
                              size: 20,
                            ),
                    ),
                    hintText: "Nhập mật khẩu",
                  ),
                ),
              ),
              Row(
                children: [
                  Container(
                    margin: const EdgeInsets.only(left: 20),
                    child: const Text(
                      "Nhớ mật khẩu ",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                    ),
                  ),
                  IconButton(
                      onPressed: () {
                        setState(() {});
                        check = !check;
                      },
                      icon: check
                          ? const FaIcon(
                              FontAwesomeIcons.solidCheckSquare,
                              color: Color(0XFF0869E1),
                              size: 20,
                            )
                          : const FaIcon(
                              FontAwesomeIcons.square,
                              color: Color(0XFF0869E1),
                              size: 20,
                            )),
                  Expanded(child: Container()),
                  Container(
                    margin: const EdgeInsets.only(right: 20),
                    child: TextButton(
                        onPressed: () {},
                        child: const Text(
                          "Quên tài khoản ?",
                          style: TextStyle(
                              color: Color(0XFF0869E1),
                              fontFamily: 'Roboto',
                              fontSize: 16,
                              fontWeight: FontWeight.w400),
                        )),
                  )
                ],
              ),
              Container(
                margin: const EdgeInsets.only(top: 15, left: 20, right: 20),
                width: 374,
                height: 64,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: const Color(0XFF0869E1)),
                child: TextButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => HomePage()));
                  },
                  child: const Text(
                    "Đăng nhập",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontFamily: 'Roboto',
                        fontWeight: FontWeight.w700),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 48,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  "Bạn chưa có tài khoản ?",
                  style: TextStyle(
                    fontFamily: 'Roboto',
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                TextButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const RegisterPage()));
                  },
                  child: const Text(
                    "Đăng ký",
                    style: TextStyle(
                      fontFamily: 'Roboto',
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                      color: Color(0XFF0869E1),
                    ),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
