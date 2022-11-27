import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:instagram/main.dart';
import 'package:instagram/screens/main_screen.dart';

import '../model/user_info.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextEditingController idcontroller = TextEditingController();
    TextEditingController pwcontroller = TextEditingController();
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: ListView(
            children: [
              Container(
                  alignment: Alignment.topRight,
                  child: IconButton(
                    onPressed: (){},
                    icon: Icon(
                      FontAwesomeIcons.close,
                      size: 30,
                      color: Colors.black87,
                    ),
                  )),
              SizedBox(height: 130),
              Container(
                  width: 150,
                  height: 60,
                  child: Image.asset("assets/logo.png")),
              SizedBox(height: 30),
              _buildTexgFiled("전화번호, 사용자 이름 또는 이메일", idcontroller),
              SizedBox(height: 10),
              _buildTexgFiled("비밀번호", pwcontroller),
              SizedBox(height: 10),
              Container(
                alignment: Alignment.topRight,
                child: Text(
                  "비밀번호를 잊으셨나요?",
                  style: TextStyle(
                      color: Colors.blue,
                      fontSize: 12,
                      fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(height: 20),
              InkWell(
                onTap: (){
                  if(idcontroller.text == "1000bang"){
                    MyApp.me = user[0];
                    Navigator.push(
                    context, MaterialPageRoute(builder: (context) =>
                  MainScreen()));
                  } else if(idcontroller.text == "jieun"){
                    MyApp.me = user[1];
                    Navigator.push(
                        context, MaterialPageRoute(builder: (context) =>
                        MainScreen()));
                  }else if(idcontroller.text == "binstar"){
                    MyApp.me = user[2];
                    Navigator.push(
                        context, MaterialPageRoute(builder: (context) =>
                        MainScreen()));
                  }else if(idcontroller.text == "swlee"){
                    MyApp.me = user[3];
                    Navigator.push(
                        context, MaterialPageRoute(builder: (context) =>
                        MainScreen()));
                  }else{
                    showDialog(context: context, builder: (BuildContext cont){
                          return AlertDialog(
                            content: Text("아이디와 비밀번호를 확인하세요"),
                            actions: [
                              TextButton(onPressed: (){
                                Navigator.of(context).pop();

                              }, child: Text("확인"))
                            ],
                          );
                    });
                  }
                },
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    alignment: AlignmentDirectional.center,
                    width: double.infinity,
                    height: 40,
                    decoration: BoxDecoration(
                    color: Colors.blue,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Text("로그인", style: TextStyle(color: Colors.white,
                    fontWeight: FontWeight.bold, fontSize: 15),
                    textAlign: TextAlign.center),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildTexgFiled(String text, TextEditingController controller) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: TextField(
        controller: controller,
        decoration: InputDecoration(
            filled: true,
            fillColor: Color(0xFFefefef),
            border: InputBorder.none,
            enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.all(
                  Radius.circular(10),
                ),
                borderSide: BorderSide(color: Colors.grey)),
            prefixIconColor: Colors.grey,
            contentPadding: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
            hintText: text),
      ),
    );
  }
}
