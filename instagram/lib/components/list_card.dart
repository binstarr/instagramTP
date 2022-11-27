import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:instagram/components/circle_Image.dart';
import 'package:instagram/main.dart';
import 'package:intl/intl.dart';

import '../constrants.dart';
import '../model/user_info.dart';
import '../screens/my_profile.dart';
import 'my_comment.dart';

class ListCard extends StatefulWidget {
  ListCard(
      {Key? key,
      required this.profileimg,
      required this.name,
      required this.mainImg,
      required this.likes,
      required this.content,
      required this.time})
      : super(key: key);
  String profileimg;
  String name;
  String mainImg;
  int likes;
  String content;
  String time;

  @override
  State<ListCard> createState() => ListCardState();
}

class ListCardState extends State<ListCard> {
  var a = true;
  List<MyComment> comments = [];
  TextEditingController _textEditingController = new TextEditingController();
  int alreadySaved = 0;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 6.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _firstRow(),
          SizedBox(
            height: 10,
          ),
          Center(
              child: Image.network(
            widget.mainImg,
            fit: BoxFit.contain,
          )),
          _secondRow(0),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0),
            child: Text(
              "좋아요 ${widget.likes} 개",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
          _thirdRow(),
          ...List.generate(comments.length, (index) => comments[index]),
          SizedBox(
            height: 5,
          ),
          _fourthRow(),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              "${widget.time} 시간 전",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 10,
                  color: Colors.grey),
            ),
          ),
          SizedBox(
            height: 10,
          ),
        ],
      ),
    );
  }

  _firstRow() {
    return Row(
      children: [
        InkWell(
          onTap: () {
            if (widget.name == "binstar") {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => MyProfile(user: user[2])));
            } else if (widget.name == "jieun") {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => MyProfile(user: user[1])));
            } else if (widget.name == "swlee") {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => MyProfile(user: user[3])));
            } else if (widget.name == "1000bang") {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => MyProfile(user: user[0])));
            }
          },
          child: Padding(
              padding: EdgeInsets.all(10.0),
              child:
                  CircleImage(img: widget.profileimg, width: 30, height: 30)),
        ),
        InkWell(
            onTap: () {
              if (widget.name == "binstar") {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => MyProfile(user: user[2])));
              } else if (widget.name == "jieun") {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => MyProfile(user: user[1])));
              } else if (widget.name == "swlee") {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => MyProfile(user: user[3])));
              } else if (widget.name == "1000bang") {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => MyProfile(user: user[0])));
              }
            },
            child: Text(widget.name,
                style: TextStyle(fontWeight: FontWeight.bold))),
        Spacer(),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Icon(FontAwesomeIcons.ellipsisVertical),
        ),
      ],
    );
  }

  _secondRow(var id) {
    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: InkWell(
            onTap: () {
              setState(() {
                print("하트눌러짐");
                if (alreadySaved == 0) {
                  print("$alreadySaved 빨간하트로 변경되랏");
                  alreadySaved = 1;
                  widget.likes + 1;
                } else {
                  alreadySaved = 0;
                  widget.likes - 1;
                }
              });
            },
            child: Icon(
              color: id == alreadySaved ? Colors.black : Colors.red,
              id == alreadySaved
                  ? FontAwesomeIcons.heart
                  : FontAwesomeIcons.solidHeart,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: InkWell(
              onTap: () {
                showDefaultHeightModalBottomSheet(context);
              },
              child: Icon(FontAwesomeIcons.comment)),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Icon(FontAwesomeIcons.paperPlane),
        ),
        Spacer(),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Icon(FontAwesomeIcons.bookmark),
        ),
      ],
    );
  }

  _thirdRow() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          Row(children: [
            Text(
              widget.name,
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            SizedBox(
              width: 10,
            ),
            Text(widget.content),
          ]),
        ],
      ),
    );
  }

  _fourthRow() {
    TextEditingController titleController = TextEditingController();
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 10),
      child: Row(
        children: [
          CircleImage(img: MyApp.me.profileimgs, width: 25, height: 25),
          SizedBox(
            width: 10,
          ),
          InkWell(
              onTap: () {
                showDefaultHeightModalBottomSheet(context);
              },
              child: Text(
                "댓글추가 ...",
                style: TextStyle(color: Colors.grey),
              )),
          Spacer(),
          Icon(
            FontAwesomeIcons.solidHeart,
            color: Colors.red,
          ),
          SizedBox(
            width: 10,
          ),
          Icon(
            FontAwesomeIcons.handsClapping,
            color: Colors.yellow,
          )
        ],
      ),
    );
  }

  void showDefaultHeightModalBottomSheet(BuildContext context) {
    showModalBottomSheet(
      context: context,
      builder: (BuildContext context) {
        return SizedBox(
          height: MediaQuery.of(context).size.height * 0.5,
          child: Column(children: [
            TextField(
              cursorColor: Colors.black87,
              decoration: const InputDecoration(
                enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.black87),
                ),
                focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.black87),
                ),
                labelStyle: TextStyle(color: Colors.black87),
                focusColor: Colors.black87,
                labelText: '댓글',
              ),
              controller: _textEditingController,
              autofocus: true,
            ),
            Row(children: [
              Spacer(),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 5),
                child: ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all(Colors.black87),
                    ),
                    child: const Text('입력'),
                    onPressed: () {
                      setState(() {
                        comments.add(MyComment(
                            time: DateFormat("a K:m")
                                .format(new DateTime.now())
                                .replaceAll("AM", "오전")
                                .replaceAll("PM", "오후"),
                            text: _textEditingController.text));
                        _textEditingController.clear();
                        Navigator.pop(context);
                      });
                    }),
              ),
            ]),
          ]),
        );
      },
    );
  }
}
