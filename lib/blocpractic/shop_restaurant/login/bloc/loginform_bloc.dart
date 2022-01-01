import 'package:bloc/bloc.dart';
import 'package:formz/formz.dart';


import 'package:uneva_assignment/blocpractic/shop_restaurant/login/bloc/loginform_event.dart';
import 'package:uneva_assignment/blocpractic/shop_restaurant/login/bloc/loginform_state.dart';
import 'package:uneva_assignment/blocpractic/shop_restaurant/login/models/password.dart';
import 'package:uneva_assignment/blocpractic/shop_restaurant/login/models/phone.dart';
import 'package:uneva_assignment/blocpractic/shop_restaurant/models/user.dart';
import 'package:uneva_assignment/blocpractic/shop_restaurant/packages/userrepository.dart';

class LoginFormBloc extends Bloc<LoginFormEvent,LoginFormState>{
  LoginFormBloc(this.userRepository):super(LoginFormState()){
    on<PhoneChanged>(_onphonechanged);
    on<PasswordChanged>(_onpasswordchanged);
    on<PhoneUnfocused>(_onphoneunfocused);
    on<PasswordUnfocused>(_onpasswordunfocused);
    on<SubmitLoginForm>(_onsubmitloginform);
  }

  final UserRepository userRepository;

  void _onphonechanged(PhoneChanged event,Emitter<LoginFormState> emit){
    final phone=Phone.dirty(event.phone);
   return emit(state.copyWith(phone: phone,formzStatus: Formz.validate([phone,Password.dirty(state.password.value)])));
  }

  void _onpasswordchanged(PasswordChanged event,Emitter<LoginFormState> emit){
    final password=Password.dirty(event.password);
   return emit(state.copyWith(password: password,formzStatus: Formz.validate([password,Phone.dirty(state.phone.value)])));
  }
  void _onphoneunfocused(PhoneUnfocused event,Emitter<LoginFormState> emit){
    final phone=Phone.dirty(state.phone.value);
   return emit(state.copyWith(phone: phone,formzStatus: Formz.validate([phone,Password.dirty(state.password.value)])));
  }
    void _onpasswordunfocused(PasswordUnfocused event,Emitter<LoginFormState> emit){
    final password=Password.dirty(state.password.value);
   return emit(state.copyWith(password: password,formzStatus: Formz.validate([password,Phone.dirty(state.phone.value)])));
  }

  void _onsubmitloginform(SubmitLoginForm event,Emitter<LoginFormState> emit)async{
    final phone=Phone.dirty(state.phone.value);
    final password=Password.dirty(state.password.value);
    emit(LoginFormState(phone:phone,password: password,formzStatus: Formz.validate([phone,password])));
    if(state.formzStatus.isValidated){
      emit(state.copyWith(formzStatus: FormzStatus.submissionInProgress));
      try {
        User user=await userRepository.fetchuser(phone.value,password.value);
        emit(LoginFormState(phone: phone,password: password,formzStatus: FormzStatus.submissionSuccess,user: user));
      } on Exception catch (e) {
        emit(state.copyWith(formzStatus: FormzStatus.submissionFailure));
       
      }
    }
  }

  
  
}