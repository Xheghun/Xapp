import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mariamproject/app/constants/x_dimens.dart';
import 'package:mariamproject/app/constants/x_strings.dart';
import 'package:mariamproject/app/constants/x_styles.dart';
import 'package:mariamproject/app/widgets/elevated_text_field.dart';
import 'package:mariamproject/app/widgets/primary_button.dart';

class LoginScreen extends StatelessWidget {

  //declare route name for navigation reference
  static final String routeName = "login_screen";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: XDimens.screenHorizontalPadding,vertical: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(XStrings.welcomeTo,style: XStyles.welcomeTextStyle,),
              SizedBox(height: 15,),
              Form(
                child: Column(
                  children: <Widget>[
                    ElevatedTextField(
                      hint: XStrings.username,
                    ),
                    SizedBox(height: 10,),
                    ElevatedTextField(
                      hint: XStrings.password,
                      obscureText: true,
                    ),
                    SizedBox(height: 10,),
                    //make button width smaller
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 10),
                      child: PrimaryButton(
                        text: XStrings.login,
                        onPressed: (){},
                      ),
                    ),
                    SizedBox(height: 10,),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Row(
                        children: <Widget>[
                          Expanded(
                            child: Container(
                              color: Colors.black26,
                              height: 1,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(3.0),
                            child: Text("OR",style: TextStyle(fontFamily: "Poppins-Medium"),),
                          ),
                          Expanded(
                            child: Container(
                              color: Colors.black26,
                              height: 1,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 10,),
                    Row(
                      children: <Widget>[
                        Expanded(
                          child: PrimaryButton(
                            text: XStrings.facebook,
                            onPressed: (){},
                            color: Colors.blue.shade800,
                          )
                        ),
                        SizedBox(width: 10,),
                        Expanded(
                          child: PrimaryButton(
                            text: XStrings.google,
                            onPressed: (){},
                            color: Colors.red.shade600,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}