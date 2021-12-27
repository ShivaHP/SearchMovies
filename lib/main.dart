
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:uneva_assignment/movies/models/moviedetailmodel.dart';
import 'package:uneva_assignment/movies/models/moviedetailprovider.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:uneva_assignment/blocpractic/counter/counterpage.dart';
// import 'package:uneva_assignment/blocpractic/counter/model/countercubit.dart';
import 'package:uneva_assignment/movies/screens/homescreen.dart';


void main() {
  runApp(MyApp());
  // BlocOverrides.runZoned(()=>runApp(MyApp()),blocObserver: MyBlocObserver());
 
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Provider(
      create: (context)=>MovieDetailProvider(MovieDetailModel()),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          // This is the theme of your application.
          //
          // Try running your application with "flutter run". You'll see the
          // application has a blue toolbar. Then, without quitting the app, try
          // changing the primarySwatch below to Colors.green and then invoke
          // "hot reload" (press "r" in the console where you ran "flutter run",
          // or simply save your changes to "hot reload" in a Flutter IDE).
          // Notice that the counter didn't reset back to zero; the application
          // is not restarted.
          primarySwatch: Colors.blue,
        ),
      home:HomeScreen()
        //home:BlocProvider(create: (context)=>BlocCounter(),child: CounterCubitPage())
      ),
    );
  }
}

// class MyBlocObserver extends BlocObserver{
//   @override
//   void onChange(BlocBase bloc,Change change){
//     super.onChange(bloc, change);
//     print("bloc:$bloc",);
//     print("change:$change");
//     print(bloc.runtimeType);
//     print(bloc.stream);
//     print(bloc.state);
    

//   }
//   @override
//   void onCreate(BlocBase bloc){
//     super.onCreate(bloc);
//     print("initial bloc:$bloc",);
//     print(bloc.state);
    

//   }
//   @override
//   void onClose(BlocBase bloc){
//     super.onClose(bloc);
    
//     print("on close bloc:$bloc",);
//     print(bloc.state);
    

//   }
//   @override
//   void onTransition(Bloc bloc,Transition transition){
//     super.onTransition(bloc,transition);
    
//     print("transition bloc:$bloc",);
//     print(bloc.state);
//     print("Transition:$transition");
    

//   }
//    @override
//   void onEvent(Bloc bloc,Object? object){
//     super.onEvent(bloc,object);
    
//     print("onevent bloc:$bloc",);
//     print(bloc.state);
//     print("Object:$object");
    
    

//   }

// }