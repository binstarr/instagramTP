import '../constrants.dart';

class User{
  String name;
  String profileimgs;
  String follower;
  String following;
  String dm;
  List<Imgs> imgs;

  User({required this.name, required this.profileimgs, required this.imgs, required this.follower, required this.following, required this.dm});
}

class Imgs {
  String image;
  Imgs({required this.image});
}


List<Imgs> bangList = [
  Imgs(image: "${urlPrefix1}son.gif"),
  Imgs(image: "${urlPrefix1}손흥민_2.jpeg"),
  Imgs(image: "${urlPrefix1}손흥민_3.jpeg"),
  Imgs(image: "${urlPrefix1}손흥민_4.jpeg"),
];
List<Imgs> jieunList = [
  Imgs(image: "${urlPrefix1}정마담_1.jpeg"),
  Imgs(image: "${urlPrefix1}정마담_2.jpeg"),
  Imgs(image: "${urlPrefix1}정마담_3.png"),
  Imgs(image: "${urlPrefix1}정마담_4.jpeg"),
];
List<Imgs> binList = [
  Imgs(image: "${urlPrefix1}하정우_1.jpeg"),
  Imgs(image: "${urlPrefix1}하정우_2.jpeg"),
  Imgs(image: "${urlPrefix1}하정우_3.jpeg"),
  Imgs(image: "${urlPrefix1}하정우_4.jpeg"),
];
List<Imgs> swList = [
  Imgs(image: "${urlPrefix1}정청.gif"),
  Imgs(image: "${urlPrefix1}정청_2.jpeg"),
  Imgs(image: "${urlPrefix1}정청_3.jpeg"),
  Imgs(image: "${urlPrefix1}정청_4.gif"),
];




List<User> user = [
  User(name: "1000bang", follower: "3M", following: "102", dm: "0", profileimgs: "${urlPrefix1}손흥민_1.jpeg", imgs: bangList ),
  User(name: "jieun", follower: "1K", following: "3333", dm: "0", profileimgs: "${urlPrefix1}정마담.png", imgs: jieunList),
  User(name: "binstar", follower: "3K", following: "1234", dm: "0", profileimgs: "${urlPrefix1}하정우.jpeg", imgs: binList),
  User(name: "swlee", follower: "2K", following: "88", dm: "0", profileimgs: "${urlPrefix1}정청_1.jpeg", imgs: swList),
  User(name: "swlee", follower: "100", following: "102", dm: "0", profileimgs: "${urlPrefix1}정청_1.jpeg", imgs: swList),
  User(name: "swlee", follower: "100", following: "102", dm: "0", profileimgs: "${urlPrefix1}정청_1.jpeg", imgs: swList),
  User(name: "swlee", follower: "100", following: "102", dm: "0", profileimgs: "${urlPrefix1}정청_1.jpeg", imgs: swList),
];