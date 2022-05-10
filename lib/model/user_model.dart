
class UserModel {
  String uid;
  String email;
  String firstName;
  String secondName;
  String address;
  String birth;

  UserModel({this.uid, this.email, this.firstName, this.secondName, this.address, this.birth});

  //receiving data from server
  factory UserModel.fromMap(map){
    return UserModel(
      uid: map['uid'],
      email: map['email'],
      firstName: map['firstName'],
      secondName: map['secondName'],
      address: map['address'],
      birth: map['birth'],
    );
  }

  //sending data from server
  Map<String, dynamic> toMap(){
    return {
      'uid': uid,
      'email': email,
      'firstName': firstName,
      'secondName': secondName,
      'address': address,
      'birth': birth
    };
  }

}