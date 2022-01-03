import 'package:flutter/material.dart';
import 'package:fuelperks/colors.dart';
import 'package:fuelperks/main.dart';
import 'package:fuelperks/responsive_helper/ResponsiveWidget.dart';
import 'package:get/get.dart';
import 'package:flutter_signin_button/flutter_signin_button.dart';

class sign_up extends StatefulWidget {
  const sign_up({Key? key}) : super(key: key);

  @override
  _sign_upState createState() => _sign_upState();
}

class _sign_upState extends State<sign_up> {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: base_color,
        body: ResponsiveWidget(
          mobile: mobile_view_signup(),
          tab: Column(),
        ),
      ),
    );
  }

  Widget mobile_view_signup(){
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          height: height * 0.2,
          color: dark_color,
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Image.asset('images/logo.png' , color: Colors.white, height: height*0.05,),
                  Text('Sign Up' , style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 24)),
                ],
              ),
            ),
          ),
        ),
        Container(
          height: height * 0.55,
          decoration: BoxDecoration(
            color: dark_color,
            borderRadius: BorderRadius.circular(10),
          ),
          child: Center(
            child: Form(
              child:Padding(
                padding: const EdgeInsets.all(20.0),
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric( horizontal: 20.0),
                        child: Container(
                          height: height * 0.05,
                          decoration: BoxDecoration(
                            color: Colors.white.withAlpha(200),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: TextFormField(
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              focusColor: Colors.white,
                              hintText: 'User Name',
                              prefixIcon: Icon(Icons.person, color: Colors.orange,),
                              fillColor: Colors.white,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 20,),
                      Padding(
                        padding: const EdgeInsets.symmetric( horizontal: 20.0),
                        child: Container(
                          height: height * 0.05,
                          decoration: BoxDecoration(
                            color: Colors.white.withAlpha(200),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: TextFormField(
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              focusColor: Colors.white,
                              hintText: 'Email',
                              prefixIcon: Icon(Icons.email, color: Colors.orange,),
                              fillColor: Colors.white,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 20,),
                      Padding(
                        padding: const EdgeInsets.symmetric( horizontal: 20.0),
                        child: Container(
                          height: height * 0.05,
                          decoration: BoxDecoration(
                            color: Colors.white.withAlpha(200),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: TextFormField(
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              focusColor: Colors.white,
                              hintText: 'Password',
                              prefixIcon: Icon(Icons.lock, color: Colors.orange,),
                              fillColor: Colors.white,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 20,),
                      Padding(
                        padding: const EdgeInsets.symmetric( horizontal: 20.0),
                        child: Container(
                          height: height * 0.05,
                          decoration: BoxDecoration(
                            color: Colors.white.withAlpha(200),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: TextFormField(
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              focusColor: Colors.white,
                              hintText: 'Confirm password',
                              prefixIcon: Icon(Icons.lock, color: Colors.orange,),
                              fillColor: Colors.white,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 20,),
                      Padding(
                        padding: const EdgeInsets.symmetric( horizontal: 20.0),
                        child: Container(
                          height: height * 0.05,
                          decoration: BoxDecoration(
                            color: Colors.white.withAlpha(200),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: TextFormField(
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              focusColor: Colors.white,
                              hintText: 'Phone Number',
                              prefixIcon: Icon(Icons.settings_cell_sharp, color: Colors.orange,),
                              fillColor: Colors.white,
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 50 , bottom: 0),
                        child: Container(
                          width: width *0.4,
                          height: height * 0.05,
                          decoration: BoxDecoration(
                            color: Colors.orange,
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Center(child: Text(
                            'Sign Up', style: TextStyle(color: Colors.white , fontWeight: FontWeight.bold),
                          ),),
                        ),

                      )
                    ],
                  ),
                ),
              )
            ),
          ),
        ),
        Container(
          height: height * 0.2,
          width: width,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                  child: SignInButton(
                    Buttons.GoogleDark,
                    onPressed: (){},
                    ),
                height: height *0.05,
              ),
              Divider(),
              Container(
                child: SignInButton(
                  Buttons.Facebook,
                  onPressed: (){},
                ),
                height: height *0.05,
              ),
            ],
          ),

        ),
      ],
    );
  }
}
