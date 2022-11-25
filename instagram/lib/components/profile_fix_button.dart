import 'package:flutter/material.dart';

class ProfileFixButton extends StatelessWidget {
  const ProfileFixButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  InkWell(
      onTap: () {
        print('프로필 편집 버튼 클릭됨');
      },
      child: Container(
        alignment: Alignment.center,
        width: 400,
        height: 45,
        decoration: BoxDecoration(
            color: Colors.grey, borderRadius: BorderRadius.circular(10)),
        child: Text(
          "프로필 편집",
          style: TextStyle(color: Colors.black),
        ),
      ),
    );
  }
}
