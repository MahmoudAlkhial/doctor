

import 'package:flutter/material.dart';

import '../../features/login/ui/widgets/login_screen.dart';
import '../../features/onbording/onbording_screen.dart' show OnBordingScreen;
import 'routes.dart';

class AppRouter{
  Route generateRoute(RouteSettings settings){
    // this arguments to be passed in any screen like this(arguments as ClassName)
final arguments = settings.arguments;
    switch(settings.name){
      case Routes.onBordingScreen:
        return MaterialPageRoute(builder: (_)=>const OnBordingScreen());
        case Routes.loginScreen:
          return MaterialPageRoute(builder: (_)=>const LoginScreen());
default:
      return MaterialPageRoute(builder: (_)=>Scaffold(
        body: Center(child: Text('No route defined for ${settings.name}')),

      ));


  }
}}