import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Stack(
            alignment: AlignmentDirectional.bottomCenter,
            children: [
              SizedBox(
                height:MediaQuery.of(context).size.height ,
                child: Stack(
                  children:  [
                    Image(
                      image:const AssetImage('assets/images/photo.png'),
                      width: double.infinity,
                      height: MediaQuery.of(context).size.height*0.45,
                      fit: BoxFit.cover,
                    ),
                    Opacity(
                      opacity: .4,
                      child: Container(
                        width: double.infinity,
                        height:MediaQuery.of(context).size.height*0.45 ,
                        color:  Colors.blue,
                      ),
                    ),

                  ],
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width *0.2,
                height:MediaQuery.of(context).size.height *0.3,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(40),
                  color:const Color(0x00ffffff),
                ),
              ),

              Positioned(
                bottom: 0,
                right: 0,
                left: 0,
                top: MediaQuery.of(context).size.height*0.35,
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height,
                  decoration:const BoxDecoration(
                    borderRadius: BorderRadius.vertical(top: Radius.circular(60)),
                    color: Colors.white,

                  ),
                ),
              ),
              Positioned(
                top:MediaQuery.of(context).size.height*0.2 ,
                child: Container(
                  width:  MediaQuery.of(context).size.width *0.8,
                  height: MediaQuery.of(context).size.height *0.35,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(40),
                    color: Colors.white,
                    boxShadow: const [
                      BoxShadow(
                        blurRadius: 1.0
                      ),
                    ],

                  ),
                  child: Column(
                    children:  const [
                     Text("Welcome",style: TextStyle(
                        fontSize: 30,
                        fontWeight:FontWeight.w400,

                      ),),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 80),
                      child: Divider(
                          color: Colors.lightBlue,
                          //endIndent: 80,
                         // indent: 30,
                        height: 40,
                        thickness: 3,
                        ),
                    ),
                      SizedBox(
                        height: 20,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),

        ],
      ),
    );
  }
}
