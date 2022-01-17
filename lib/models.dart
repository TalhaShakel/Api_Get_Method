// ignore_for_file: empty_constructor_bodies




class usermodel {
   String? username;
 String email;
//  String password;
 usermodel(
 {   required this.email,this.username
});

}

 class UserModel {
  int id;
  String name;
  String username;
  String? email;
  String? address;
  UserModel({
    required this.id,
    required this.name,
    required this.username,
    this.email,
    this.address,
  });
}
