class UserList{
  List<UserModel> users =[];

  UserList.fromJson(List <dynamic> json){
    json.forEach((element) {
      users.add(UserModel.fromJson(element));
    });
  }
  UserList();
}

class UserModel {
  late String name;
  late String status;
  late String hours;
  late String image;
  late String id;

  UserModel.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    status = json['status'];
    hours = json['hours'];
    image = json['image'];
    id = json['id'];
  }
}
