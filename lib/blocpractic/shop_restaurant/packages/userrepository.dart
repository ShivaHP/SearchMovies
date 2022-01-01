import 'dart:convert';

import 'package:http/http.dart';
import 'package:uneva_assignment/blocpractic/shop_restaurant/models/user.dart';

class UserRepository{
  UserRepository(this.client);
  final Client client;

  Future<User> fetchuser(String phonenumber,String password)async{
    Map<String,String> body={
      "phoneNumber":phonenumber,
      "password":password

    };
   
      Response response=await client.post(Uri.parse("https://zippy-server-1.herokuapp.com/auth/login"),body: body);
      if(response.statusCode==200){
         Map responsebody=jsonDecode(response.body);
        User user=User.fromJson(responsebody as Map<String,dynamic>);
        return user;
    
      }
      else{
        throw Exception("Some error occured");
      }
       

  }

}