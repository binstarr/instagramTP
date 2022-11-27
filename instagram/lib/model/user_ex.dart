
class UserEx{
  var img;
  var name;
  var mainImg;
  var backgroundImage;

  UserEx({this.img, this.name, this.mainImg, this.backgroundImage});


}
  final String _imgURL = "assets/";

  List<UserEx> myList = [
    UserEx(name: "binstarr", img: "${_imgURL}busan.jpg",),
    UserEx(name: "binstarr", img: "${_imgURL}seoul.jpg",),
    UserEx(name: "binstarr", img: "${_imgURL}jj.jpg",),
    UserEx(name: "binstarr", img: "${_imgURL}yy.jpg",),
    UserEx(name: "binstarr", img: "${_imgURL}kj.jpg",),
  ];

