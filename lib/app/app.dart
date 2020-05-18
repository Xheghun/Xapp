import 'package:flutter/material.dart';
import 'package:mariamproject/app/providers/base.dart';
import 'package:mariamproject/app/screens/login_screen.dart';
import 'package:provider/provider.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        //register providers
        ChangeNotifierProvider.value(value: BaseProvider()),
      ],
      child: MaterialApp(
        home: LoginScreen(),
        theme: ThemeData(
          fontFamily: "Comfortaa-Regular",
        ),
        routes: <String, WidgetBuilder>{
          LoginScreen.routeName: (context) => LoginScreen(),
        },
      ),
    );
  }
}
