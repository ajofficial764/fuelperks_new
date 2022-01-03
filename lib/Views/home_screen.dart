import 'package:flutter/material.dart';
import 'package:fuelperks/Views/sign_up.dart';
import 'package:fuelperks/responsive_helper/ResponsiveWidget.dart';

class home_screen extends StatefulWidget {
  const home_screen({Key? key}) : super(key: key);

  @override
  _home_screenState createState() => _home_screenState();
}

class _home_screenState extends State<home_screen> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SafeArea(
          child: ResponsiveWidget(
            mobile: mobile_view_home(),
            tab: tab_view_home(),
          ),
        ),
      ),
    );
  }

  Widget mobile_view_home() {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(
              height: height * 0.3, child: Image.asset('images/homescreen.jpg')),
          Container(
            height: height * 0.3,
              child: Text(
                  'This App Can be used for getting concession on fuel prices by using scracth codes on tha cards. ')),
          InkWell(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => sign_up()));
            },
            child: Container(
              height: height * 0.075,
              width: width * 0.4,
              decoration: BoxDecoration(
                color: Colors.orange,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Continue' , style: TextStyle(color: Colors.white , fontWeight: FontWeight.bold),),
                  Icon(Icons.arrow_forward_ios_rounded  , color: Colors.white,)
                ],
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget tab_view_home() {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Padding(
      padding: const EdgeInsets.all(0.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset('images/homescreen.jpg' , width: width * 0.35, height: height * 0.35,),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: width * 0.2,
                child: Text(
                    'This App Can be used for getting concession on fuel prices by using scracth codes on tha cards. '),
              ),
              SizedBox(height: 20,),
              InkWell(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => sign_up()));
                },
                child: Container(
                  height: height * 0.05,
                  width: width * 0.2,
                  decoration: BoxDecoration(
                    color: Colors.orange,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('Continue' , style: TextStyle(color: Colors.white , fontWeight: FontWeight.bold),),
                      Icon(Icons.arrow_forward_ios_rounded  , color: Colors.white,)
                    ],
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
