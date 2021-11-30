import 'package:country_code_picker/country_localizations.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:country_code_picker/country_code_picker.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

import '../dashboardpage.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _controller1 = TextEditingController();
  final _controller2 = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      supportedLocales: const [
        Locale("af"),
        Locale("am"),
        Locale("ar"),
        Locale("az"),
        Locale("be"),
        Locale("bg"),
        Locale("bn"),
        Locale("bs"),
        Locale("ca"),
        Locale("cs"),
        Locale("da"),
        Locale("de"),
        Locale("el"),
        Locale("en"),
        Locale("es"),
        Locale("et"),
        Locale("fa"),
        Locale("fi"),
        Locale("fr"),
        Locale("gl"),
        Locale("ha"),
        Locale("he"),
        Locale("hi"),
        Locale("hr"),
        Locale("hu"),
        Locale("hy"),
        Locale("id"),
        Locale("is"),
        Locale("it"),
        Locale("ja"),
        Locale("ka"),
        Locale("kk"),
        Locale("km"),
        Locale("ko"),
        Locale("ku"),
        Locale("ky"),
        Locale("lt"),
        Locale("lv"),
        Locale("mk"),
        Locale("ml"),
        Locale("mn"),
        Locale("ms"),
        Locale("nb"),
        Locale("nl"),
        Locale("nn"),
        Locale("no"),
        Locale("pl"),
        Locale("ps"),
        Locale("pt"),
        Locale("ro"),
        Locale("ru"),
        Locale("sd"),
        Locale("sk"),
        Locale("sl"),
        Locale("so"),
        Locale("sq"),
        Locale("sr"),
        Locale("sv"),
        Locale("ta"),
        Locale("tg"),
        Locale("th"),
        Locale("tk"),
        Locale("tr"),
        Locale("tt"),
        Locale("uk"),
        Locale("ug"),
        Locale("ur"),
        Locale("uz"),
        Locale("vi"),
        Locale("zh")
      ],
      localizationsDelegates: const [
        CountryLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
      ],
      home: Scaffold(
        //resizeToAvoidBottomInset: false,
        body: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  height: 170,
                  child: Image.asset('assets/images/LoginImage.png'),
                ),
                const SizedBox(height: 80),
                Center(
                  child: Text('Enter your email ID and password to get access',
                      style: (GoogleFonts.poppins(fontSize: 10))),
                ),
                Center(
                  child: Text('to your account',
                      style: (GoogleFonts.poppins(fontSize: 10))),
                ),
                const SizedBox(height: 30),
                Align(
                  alignment: FractionalOffset(0.15, 0.8),
                  child: Text("Mobile number or email",
                      //textAlign: TextAlign.left,
                      style: (GoogleFonts.poppins(
                          fontSize: 10, color: Colors.grey))),
                ),
                const SizedBox(height: 5),
                Container(
                  height: 50,
                  width: 300,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey, width: 0.0),
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(6),
                  ),
                  child: Row(children: [
                    CountryCodePicker(
                      showFlag: false,
                      //textStyle: Colors.red,
                      onChanged: print,
                      // Initial selection and favorite can be one of code ('IT') OR dial_code('+39')
                      initialSelection: '+91',
                      textStyle:
                          const TextStyle(fontSize: 12, color: Color(0xffFF5367)),
                      favorite: const ['+91'],
                      // optional. Shows only country name and flag
                      showCountryOnly: false,
                      // optional. Shows only country name and flag when popup is closed.
                      showOnlyCountryWhenClosed: false,
                      // optional. aligns the flag and the Text left
                      alignLeft: false,
                    ),
                    Container(
                      height: 50,
                      width: 150,
                      child: TextFormField(
                          cursorColor: Color(0xff696969),
                          controller: _controller1,
                          style: (GoogleFonts.poppins(
                              fontSize: 13, color:Color(0xff696969))),
                          decoration: const InputDecoration(
                            // floatingLabelBehavior:FloatingLabelBehavior.always,
                            // label : Text('Mobile number or email'),
                            //labelStyle: TextStyle(fontSize: 10),
          
                            // enabledBorder: OutlineInputBorder(
                            //   borderSide:
                            //       BorderSide(color: Colors.grey, width: 0.0),
                            // ),
                            // border: OutlineInputBorder(),
                            border: InputBorder.none,
                            hintStyle:
                                TextStyle(fontSize: 10, color: Colors.black),
                            // hintText: 'Mobile number or email',
                            contentPadding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                            //label: Text('Your Name',
                            //style: TextStyle(
                            //fontWeight: FontWeight.w300, fontSize: 12)),
                          ),
                          validator: (String? value) {
                            if (value == null || value.isEmpty) {
                              return 'Required';
                            }
                          }),
                    ),
                  ]),
                ),
                const SizedBox(height: 30),
                Align(
                  alignment: FractionalOffset(0.1, 0.8),
                  child: Text("Password",
                      //textAlign: TextAlign.left,
                      style: (GoogleFonts.poppins(
                          fontSize: 10, color: Colors.grey))),
                ),
                const SizedBox(height: 5),
                Container(
                  height: 50,
                  width: 300,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: TextFormField(
                      obscureText: true,
                      cursorColor: Color(0xff696969),
                      controller: _controller2,
                      style: (GoogleFonts.poppins(
                          fontSize: 13, color: Color(0xff696969))),
                      decoration: const InputDecoration(
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.grey, width: 0.0),
                        ),
                        border: OutlineInputBorder(),
                        labelStyle: TextStyle(fontSize: 10),
                        suffixIcon: Icon(Icons.visibility),
                        hintStyle: TextStyle(fontSize: 10, color: Colors.black),
                        contentPadding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                      ),
                      validator: (String? value) {
                        if (value == null || value.isEmpty) {
                          return 'Required';
                        }
                      }),
                ),
                const SizedBox(height: 30),
                Center(
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      Container(
                        alignment: Alignment.center,
                        height: 50,
                        width: 300,
                        decoration: BoxDecoration(
                          //shape: BoxShape.circle,
                          gradient: const LinearGradient(
                            begin: Alignment.topLeft,
                            end: Alignment.topRight,
                            colors: [
                              Color(0xffFF3649),
                              Color(0xffFF5733),
                            ],
                          ),
                          borderRadius: BorderRadius.circular(12),
                        ),
                      ),
                      TextButton(
                        child: Text(
                          'Login',
                          style: (GoogleFonts.poppins(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            // shadows: <Shadow>[
                            //   const Shadow(
                            //     offset: Offset(2.0, 2.0),
                            //     blurRadius: 1.0,
                            //     color: Color.fromARGB(50, 0, 0, 0),
                            //   ),
                            // ],
                          )),
                        ),
                        onPressed: () async {
                          await Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const DashboardPage(),
                            ),
                          );
                        },
                      ),
                    ],
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
