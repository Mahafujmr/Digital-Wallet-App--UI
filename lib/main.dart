import 'package:digital_wallet_ui/screens/balance_home_screens.dart';
import 'package:flutter/material.dart';
void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget{
  const MyApp ({super.key});
  @override
  Widget build (BuildContext context ){
    return MaterialApp(

      debugShowCheckedModeBanner: false,
      home: BalanceHomeScreens(),

    );
  }
}