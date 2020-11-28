import 'package:flutter/material.dart';


class Signup extends StatefulWidget {
  @override
  _SignupState createState() => _SignupState();
}

Widget buildEmail() {
  return Directionality(
    textDirection: TextDirection.rtl,
      child: Container(
      height: 50,
      width: 300,
      alignment: Alignment.centerLeft,
      decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(
            color: Colors.black26,
            width: 1,
          ),
          borderRadius: BorderRadius.circular(5),
          boxShadow: [BoxShadow(color: Colors.black26)]),
      child: TextField(
         keyboardType: TextInputType.emailAddress,
    decoration: InputDecoration(
      border: InputBorder.none,
      hintText: 'البريد الإلكتروني',
      contentPadding: EdgeInsets.only(right: 10)
    ),
)
    ),
  );
}
Widget buildPassword() {
  return Directionality(
    textDirection: TextDirection.rtl,
      child: Container(
      height: 50,
      width: 300,
      alignment: Alignment.centerLeft,
      decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(
            color: Colors.black26,
            width: 1,
          ),
          borderRadius: BorderRadius.circular(5),
          boxShadow: [BoxShadow(color: Colors.black26)]),
      child: TextField(
      obscureText: true,
    decoration: InputDecoration(
      border: InputBorder.none,
      hintText: 'كلمة المرور',
      contentPadding: EdgeInsets.only(right: 10)
    ),
)
    ),
  );
}
Widget buildForgetpassword(){
  BuildContext context;
    return GestureDetector(
      onTap:()=> Navigator.pushNamed(context, 'forgetPassword'),
      child: Text('? نسيت كلمة المرور',
        style: TextStyle(
          fontSize: 18,
          decoration: TextDecoration.underline,
        ),
    
    ),
  );
}
class _SignupState extends State<Signup> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Container(
    child: SingleChildScrollView(
      child: Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        SizedBox(
          height: 200,
          width: 490,
          child: Image(image: AssetImage('images/icons/logo.png')),
        ),
        Text(
          'تسجيل الدخول',
          style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.bold,
              color: Colors.deepOrange),
        ),
        SizedBox(
          height: 20,
        ),
        buildEmail(),
        SizedBox(height: 20,),
        buildPassword(),
        SizedBox(height: 10,),
        GestureDetector(
            onTap: ()=>Navigator.pushNamed(context, 'signup'),
                      child: Container(
              margin: EdgeInsets.symmetric(vertical: 13),
              width: 300,
              height: 50,
              decoration: BoxDecoration(
                  color: Colors.deepOrange,
                  borderRadius: BorderRadius.circular(5)),
              child: Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Icon(
                      Icons.keyboard_arrow_left,
                      color: Colors.white,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 90),
                      child: Text(
                        'تسجيل الدخول',
                        style: TextStyle(fontSize: 20, color: Colors.white),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          SizedBox(height: 5,),
          buildForgetpassword(),
          
          Padding(padding: EdgeInsets.only(top: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                 width: 70,height:1,color: Colors.black38
              ),
              Padding(padding: EdgeInsets.symmetric(horizontal: 25),
              child: Text('او',
              style: TextStyle(
                color: Colors.black38,
                fontWeight: FontWeight.bold,
                fontSize: 24,
              ),
              ),
              ),
               Container(
                 width: 70,height:1,color: Colors.black38
              ),
            ],
          ),
          ),
          SizedBox(height: 5,),
          Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: GestureDetector(
                  onTap: () => print("sign up"),
                  child: Container(
                    height: 60,
                    color: Colors.transparent,
                    child: Container(
                      decoration: BoxDecoration(
                          color: Color(0xff4267B2),
                          borderRadius: BorderRadius.circular(5)),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Row(
                            children: [
                              Image(
                                  image:
                                      AssetImage('images/icons/facebook.png'))
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 10),
                            child: Text(
                              'تسجيل الدخول بواسطة فيسبوك',
                              style: TextStyle(
                                  fontSize: 20,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 16),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                 Text('?ليس لديك حساب',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 15,
                    color: Colors.black45
                  ),
                 ),
                 SizedBox(width: 10,),
                 InkWell(
                   onTap: ()=>print('انضم لنا الآن'),
                   child: Text('انضم لنا الآن',
                   style: TextStyle(
                     fontWeight: FontWeight.bold,
                     color: Colors.deepOrange,
                     fontSize: 17
                   ),
                   ),

                 )
                ],
              )
      ],
    ),
    
    )
        )
        ),
      );
  }
}
