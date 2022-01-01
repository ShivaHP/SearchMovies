import 'package:formz/formz.dart';

enum PhoneValidationError {invalid}

class Phone extends FormzInput<String,PhoneValidationError>{
  const Phone.pure([String value=""]):super.pure(value);
  const Phone.dirty([String value=""]):super.dirty(value);

  @override
  PhoneValidationError? validator(String value) {
    return value.isEmpty||value.length<10?PhoneValidationError.invalid:null;
  }
}