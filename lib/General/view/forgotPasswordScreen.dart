import 'package:andgarivara/Utils/controller/SizeConfigController.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ForgotPassword extends StatelessWidget {

  final GetSizeConfig getSizeConfig = Get.find();
  double width;
  double height;

  TextEditingController mobile = TextEditingController();
  FocusNode mobileNode = FocusNode();

  void dispose() {
    mobile.dispose();
    mobileNode.dispose();
  }

  setInitialScreenSize() {
    width = getSizeConfig.width.value;
    height = getSizeConfig.height.value;
  }

  @override
  Widget build(BuildContext context) {
    setInitialScreenSize();
    return Scaffold(
      backgroundColor: Color(0xffffffff),
        body: Center(
          child: SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: width*70),
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric( vertical: height * 10),
                    child: Container(
                      height: height * 250,
                      width: width * 800,
                      child: Image.asset(
                        'assets/images/appLogo/andgarivara_hero.gif',
                        // fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric( vertical: height * 5),
                    child: Container(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        'Forgot Password?',
                        style: TextStyle(
                            fontSize: getSizeConfig.width * 70,
                            color: Colors.black,
                          fontWeight: FontWeight.bold
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: height * 10),
                    child: Container(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        'Enter your mobile no. to get the password reset code',
                        style: TextStyle(
                            fontSize: getSizeConfig.width * 35,
                            color: Colors.black
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding:
                    EdgeInsets.symmetric(vertical: height * 15),
                    child: TextField(
                      controller: mobile,
                      focusNode: mobileNode,
                      decoration: InputDecoration(
                        contentPadding: EdgeInsets.symmetric(
                            vertical: height * 5,
                            horizontal: width * 30),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(width*20),
                            borderSide: BorderSide(
                              color: Color(0xff233F53),
                            )),
                        labelText: 'Mobile no.',
                      ),
                    ),
                  ),
                  Padding(
                    padding:
                    EdgeInsets.symmetric(vertical: height * 30),
                    child: Container(
                      width: width*1000,
                      height: height*70,
                      child: FlatButton(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(width*80),
                            side: BorderSide(color: Colors.red)
                        ),
                        onPressed: () {
                          Get.back();
                          },
                        child: Text(
                          'Send Code',
                          style: TextStyle(color: Colors.white,fontSize: getSizeConfig.getPixels(20)),
                        ),
                        color: Color(0xffC8102E),
                        splashColor: Colors.grey,
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
    );
  }
}
