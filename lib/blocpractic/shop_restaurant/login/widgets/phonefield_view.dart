

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:uneva_assignment/blocpractic/shop_restaurant/login/bloc/loginform_bloc.dart';
import 'package:uneva_assignment/blocpractic/shop_restaurant/login/bloc/loginform_event.dart';
import 'package:uneva_assignment/blocpractic/shop_restaurant/login/bloc/loginform_state.dart';

class PhoneFieldView extends StatelessWidget {
 
  const PhoneFieldView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LoginFormBloc,LoginFormState>(
      builder: (context,state){
        print(state.phone.invalid);
        return TextFormField(
          initialValue: state.phone.value,
          textInputAction: TextInputAction.next,
          onChanged: (String text){
            context.read<LoginFormBloc>().add(PhoneChanged(text));
          },
          decoration: InputDecoration(
            hintText: "Enter your phone number",
            errorText: state.phone.invalid?"Enter a valid phone number":"",
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
            )
          ),
        );
      }
    );
  }
}