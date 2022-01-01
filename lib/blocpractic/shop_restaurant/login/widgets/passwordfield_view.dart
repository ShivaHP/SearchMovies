import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:uneva_assignment/blocpractic/shop_restaurant/login/bloc/loginform_bloc.dart';
import 'package:uneva_assignment/blocpractic/shop_restaurant/login/bloc/loginform_event.dart';
import 'package:uneva_assignment/blocpractic/shop_restaurant/login/bloc/loginform_state.dart';

class PasswordFieldView extends StatelessWidget {
  const PasswordFieldView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
      return BlocBuilder<LoginFormBloc,LoginFormState>(
      builder: (context,state){
        return TextFormField(
          initialValue: state.password.value,
          textInputAction: TextInputAction.done,
          onChanged: (String text){
            context.read<LoginFormBloc>().add(PasswordChanged(text));
          },
          decoration: InputDecoration(
            hintText: "Enter your password",
            errorText: state.password.invalid?"Enter a valid password":"",
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
            )
          ),
        );
      }
    );
  }
  }
