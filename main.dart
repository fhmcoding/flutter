import 'package:flutter/material.dart';
import 'package:newproject/details.dart';
import 'package:newproject/drawerScreen.dart';
import 'package:newproject/Home.dart';
import 'package:newproject/Forgetpassword.dart';
import 'package:newproject/register.dart';
import 'package:newproject/signin.dart';
import 'package:newproject/signup.dart';



void main() {
  runApp(MyApp());
}

      class MyApp extends StatelessWidget {
        @override
        Widget build(BuildContext context) {
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            home: Stack(
              children: [
                 DrawerScreen(),
                 Home(),
              ],
              
            ),
            routes: {
              'details':(context){
                return Details();
              },
              'register':(context){
                return Register();
              },
              'signup':(context){
                return Signup();
              },
              'signin':(context){
                return Signin();
              },
              'forgetPassword':(context){
                return Forgetpassword();
              },
              

            },
      
          );
        }
      }
       