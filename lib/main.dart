import 'package:flutter/material.dart';
import 'package:flutter_master/pages/home_page.dart';
import 'package:flutter_master/pages/login_page.dart';
import 'package:google_fonts/google_fonts.dart';


void main(){



  runApp(new myApp());

}

class myApp extends StatelessWidget {



  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      debugShowCheckedModeBanner:  false,

      themeMode:ThemeMode.light,

      theme: ThemeData(

  primarySwatch: Colors.deepPurple,
      fontFamily:GoogleFonts.lato().fontFamily,
      ),
  
      darkTheme: ThemeData(

primarySwatch: Colors.green
      ),

      initialRoute: "/login",
      routes: {

        "/login":(context)=>loginPage(),



      },

    );
  }
}
