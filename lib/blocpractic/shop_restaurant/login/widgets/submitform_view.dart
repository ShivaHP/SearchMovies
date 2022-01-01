

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:uneva_assignment/blocpractic/shop_restaurant/login/bloc/loginform_bloc.dart';
import 'package:uneva_assignment/blocpractic/shop_restaurant/login/bloc/loginform_event.dart';
import 'package:uneva_assignment/blocpractic/shop_restaurant/login/bloc/loginform_state.dart';

class LoginFormSubmitButton extends StatelessWidget {
  const LoginFormSubmitButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LoginFormBloc,LoginFormState>(
      buildWhen: (prevstate,currentstate)=>prevstate!=currentstate,
      builder: (context,state){
        return ElevatedButton(style: ElevatedButton.styleFrom(primary: Colors.black),onPressed: (){
          context.read<LoginFormBloc>().add(SubmitLoginForm());
        }, child: Text("Login",style: TextStyle(color: Colors.white),));

      }
    );
  }
}