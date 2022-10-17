import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/material.dart';
import 'package:mukhiddin_cv/domain/core/connectivity_ext.dart';
import 'package:mukhiddin_cv/infrastructure/services/connectivity.dart';
import 'package:mukhiddin_cv/presentation/pages/home.dart';
import 'package:mukhiddin_cv/presentation/pages/no_connection_page.dart';
import 'package:mukhiddin_cv/presentation/pages/splash_page.dart';
import 'package:mukhiddin_cv/presentation/styles/theme.dart';
import 'package:mukhiddin_cv/presentation/test.dart';
import 'package:provider/provider.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     body: FutureBuilder(
       future: Future.wait([
         ConnectivityX.create,
         CustomTheme.create,
       ]),
       builder: (BuildContext context, AsyncSnapshot<dynamic> snapshot) {

         if(snapshot.connectionState == ConnectionState.waiting){
           return SplashPage();
         }else if( snapshot.hasData && snapshot.data is List ){
           final data = snapshot.data;
           final ConnectivityResult connectivity = data?[0];
           final CustomTheme theme = data?[1];

           if (connectivity.hasNetworkConnection) {
             return ChangeNotifierProvider(
                 create: (_)=> theme,
                 builder: (context, child) {
                   return HomePage();
                 },
             );
           } else {
             return NoNetworkPage();
           }
         }
         else{
           return TestPage();
         }

         },

     ),
    );
  }
}
