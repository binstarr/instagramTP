import '../constrants.dart';

class User{
  String name;
  String img;
  String follower;
  String following;
  String dm;

  User({required this.name, required this.img, required this.follower, required this.following, required this.dm});
}



List<User> user = [
User(name: "1000bang", follower: "100", following: "102", dm: "0", img: "${urlPrefix1}son.gif"),
  User(name: "jieun", follower: "100", following: "102", dm: "0", img: "${urlPrefix1}정마담.png"),
  User(name: "binstar", follower: "100", following: "102", dm: "0", img: "${urlPrefix1}심영.gif"),
  User(name: "swlee", follower: "100", following: "102", dm: "0", img: "${urlPrefix1}정청.gif"),
  User(name: "swlee", follower: "100", following: "102", dm: "0", img: "${urlPrefix1}정청.gif"),
  User(name: "swlee", follower: "100", following: "102", dm: "0", img: "${urlPrefix1}정청.gif"),
  User(name: "swlee", follower: "100", following: "102", dm: "0", img: "${urlPrefix1}정청.gif"),
];