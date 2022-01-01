import 'package:uneva_assignment/blocpractic/shop_restaurant/login/bloc/loginform_state.dart';

abstract class LoginFormEvent{
}

class PhoneChanged extends LoginFormEvent {
  final String phone;
  PhoneChanged(this.phone);
}

class PasswordChanged extends LoginFormEvent {
  final String password;
  PasswordChanged(this.password);
}
class PasswordUnfocused extends LoginFormEvent{}
class PhoneUnfocused extends LoginFormEvent{}

class SubmitLoginForm extends LoginFormEvent{}
