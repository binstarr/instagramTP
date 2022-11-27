
class User{
  var title;
  var backgroundImage;

  User({this.title, required this.backgroundImage});

}
  final String _imgURL = "assets/";

List<User> storyList = [
  User(title: "부산 여행", backgroundImage: "${_imgURL}busan.jpg"),
  User(title: "서울 여행", backgroundImage: "${_imgURL}seoul.jpg"),
  User(title: "제주 여행", backgroundImage: "${_imgURL}jj.jpg"),
  User(title: "양양 여행", backgroundImage: "${_imgURL}yy.jpg"),
  User(title: "여수 여행", backgroundImage: "${_imgURL}ys.jpg"),
  User(title: "경주 여행", backgroundImage: "${_imgURL}kj.jpg"),
];

List<User> jieunList = [
  User(title: "2022", backgroundImage: "${_imgURL}movie1.jpg"),
  User(title: "2021", backgroundImage: "${_imgURL}movie2.jpg"),
  User(title: "2020", backgroundImage: "${_imgURL}movie3.jpg"),
  User(title: "2019", backgroundImage: "${_imgURL}movie4.jpg"),
  User(title: "2018", backgroundImage: "${_imgURL}movie5.jpg"),
];

List<User> tabView = [
  User(backgroundImage: "${_imgURL}busan.jpg"),
  User(backgroundImage: "${_imgURL}seoul.jpg"),
  User(backgroundImage: "${_imgURL}jj.jpg"),
  User(backgroundImage: "${_imgURL}yy.jpg"),
  User(backgroundImage: "${_imgURL}ys.jpg"),
  User(backgroundImage: "${_imgURL}kj.jpg"),
];