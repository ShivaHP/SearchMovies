import 'package:formz/formz.dart';
import 'package:uneva_assignment/blocpractic/shop_restaurant/login/models/password.dart';
import 'package:uneva_assignment/blocpractic/shop_restaurant/login/models/phone.dart';
import 'package:uneva_assignment/blocpractic/shop_restaurant/models/user.dart';

class LoginFormState{
  final Phone phone;
  final Password password;
  final FormzStatus formzStatus;
  final User? user;
  LoginFormState({this.phone=const Phone.pure(),this.password=const Password.pure(),this.formzStatus=FormzStatus.pure,this.user});

  LoginFormState copyWith({Phone? phone,Password? password,FormzStatus? formzStatus}){
    return LoginFormState(phone: phone??this.phone,password: password??this.password,formzStatus: formzStatus??this.formzStatus);
  }
}