import 'package:intl/intl.dart';

String timeconverted(String minutes){
  int min=int.tryParse(minutes)??0;
  String time=DateFormat("Hm").format(DateTime(2021,1,1,0,min));
  List listtime=time.split(":");
  return "${listtime[0]} hours ${listtime[1]} minute";
}
