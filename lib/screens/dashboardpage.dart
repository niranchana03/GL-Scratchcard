import 'package:flutter/material.dart';
import 'package:getleadscratchcard/screens/optionspage.dart';
import 'package:google_fonts/google_fonts.dart';

class DashboardPage extends StatefulWidget {
  const DashboardPage({Key? key}) : super(key: key);

  @override
  _DashboardPageState createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: Column(
      children: [
        Stack(alignment: Alignment.center, children: [
          Container(
            height: 200,
            color: const Color(0xffFF3748),
          ),
          Align(
            alignment: Alignment.center,
            child: Container(
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.2),
                      spreadRadius: 2,
                      blurRadius: 5,
                      offset: Offset(5, 10), // changes position of shadow
                    ),
                  ],
                ),
                height: 100,
                child: Image.asset('assets/images/Burger.png')),
          )
        ]),
        const SizedBox(height: 30),
        Center(
          child: Text('Find your',
              style: (GoogleFonts.poppins(
                  fontSize: 20,
                  color: const Color(0xff454545),
                  fontWeight: FontWeight.w500))),
        ),
        Center(
          child: Text('Scratch Card',
              style: (GoogleFonts.poppins(
                  fontSize: 35,
                  color: const Color(0xff454545),
                  fontWeight: FontWeight.w600))),
        ),
        const SizedBox(height: 30),
        Container(height: 30, child: Image.asset('assets/images/GLlogo.png')),
        const SizedBox(height: 20),
        Center(
          child: Text('Scratch & Win offer',
              style: (GoogleFonts.poppins(
                  fontSize: 14,
                  color: const Color(0xff9D9D9D),
                  fontWeight: FontWeight.w300))),
        ),
        const SizedBox(height: 60),
        Center(
          child: Stack(
            alignment: Alignment.center,
            children: [
              Container(
                alignment: Alignment.center,
                height: 50,
                width: 200,
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
                  'Get your scratch card',
                  style: (GoogleFonts.poppins(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  )),
                ),
                onPressed: () async {
                  await Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const OptionsPage(),
                    ),
                  );
                },
              ),
            ],
          ),
        )
      ],
    )));
  }
}
