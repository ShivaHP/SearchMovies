import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:uneva_assignment/blocpractic/shop_restaurant/login/bloc/loginform_bloc.dart';
import 'package:uneva_assignment/blocpractic/shop_restaurant/login/bloc/loginform_state.dart';
import 'package:uneva_assignment/blocpractic/shop_restaurant/login/widgets/passwordfield_view.dart';
import 'package:uneva_assignment/blocpractic/shop_restaurant/login/widgets/phonefield_view.dart';
import 'package:formz/formz.dart';
import 'package:uneva_assignment/blocpractic/shop_restaurant/login/widgets/submitform_view.dart';
import 'package:uneva_assignment/blocpractic/shop_restaurant/resturant/views/restaurant_view.dart';
class LoginForm extends StatelessWidget {
  const LoginForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        alignment: Alignment.center,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Colors.blue.shade700,
            Colors.blue.shade900
          ]
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          BlocListener<LoginFormBloc,LoginFormState>(
            listener: (context,state){
              if(state.formzStatus.isSubmissionInProgress){

                ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Please wait")));
              }
              else if(state.formzStatus.isSubmissionFailure){
                ScaffoldMessenger.of(context).hideCurrentSnackBar();
                    ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Sorry unable to login")));
              }
              else if(state.formzStatus.isSubmissionSuccess){
                  ScaffoldMessenger.of(context).hideCurrentSnackBar();
                    ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Loggged in Successfully")));
                 Navigator.push(context,  MaterialPageRoute(builder: (context)=>ResturantView()));

              }
              else{

              }
            },
            child: Text(""),
          ),
          PhoneFieldView(),
          const SizedBox(height: 20,),
          PasswordFieldView(),
            const SizedBox(height: 20,),
          LoginFormSubmitButton()
        ],
      ),
    ));
  }
}