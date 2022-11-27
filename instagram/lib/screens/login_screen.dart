import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
              _buildTexgFiled("전화번호, 사용자 이름 또는 이메일"),
              SizedBox(height: 10),
              _buildTexgFiled("비밀번호"),
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
              Padding(
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
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildTexgFiled(String text) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: TextField(
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
