import 'package:flutter/material.dart';
import 'package:getleadscratchcard/screens/findcardpage.dart';
import 'package:google_fonts/google_fonts.dart';

class OptionsPage extends StatefulWidget {
  const OptionsPage({Key? key}) : super(key: key);

  @override
  _OptionsPageState createState() => _OptionsPageState();
}

class _OptionsPageState extends State<OptionsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Row(children: [
              IconButton(
                icon: const Icon(Icons.arrow_back, color: Color(0xff858585)),
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
              const SizedBox(width: 50),
              Container(
                  height: 30, child: Image.asset('assets/images/GLlogo.png')),
            ]),
            const SizedBox(height: 30),
            Stack(
              alignment: Alignment.center,
              children: [
                Container(
                  height: 120,
                  //margin: const EdgeInsets.all(100.0),
                  decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.2),
                          spreadRadius: 2,
                          blurRadius: 5,
                          offset: Offset(5, 10), // changes position of shadow
                        ),
                      ],
                      border: Border.all(color: Colors.white, width: 0.0),
                      color: Color(0xffED1B24),
                      shape: BoxShape.circle),
                ),
                TextButton(
                  child: Text(
                    'Everyone',
                    style: (GoogleFonts.montserrat(
                        fontSize: 15,
                        color: const Color(0xffFFFFFF),
                        fontWeight: FontWeight.w500)),
                  ),
                  onPressed: () async {
                    await Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const FindCardPage(),
                      ),
                    );
                  },
                ),
              ],
            ),
            const SizedBox(height: 25),
            Stack(
              alignment: Alignment.center,
              children: [
                Container(
                  height: 120,
                  //margin: const EdgeInsets.all(100.0),
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.white, width: 0.0),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.2),
                          spreadRadius: 2,
                          blurRadius: 5,
                          offset: Offset(5, 10), // changes position of shadow
                        ),
                      ],
                      color: Color(0xff484848),
                      shape: BoxShape.circle),
                ),
                TextButton(
                  child: Text(
                    'Above 25',
                    style: (GoogleFonts.montserrat(
                        fontSize: 15,
                        color: const Color(0xffFFFFFF),
                        fontWeight: FontWeight.w500)),
                  ),
                  onPressed: () async {
                    await Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const FindCardPage(),
                      ),
                    );
                  },
                ),
              ],
            ),
            const SizedBox(height: 25),
            Stack(
              alignment: Alignment.center,
              children: [
                Container(
                  height: 120,
                  //margin: const EdgeInsets.all(100.0),
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.white, width: 0.0),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.2),
                          spreadRadius: 2,
                          blurRadius: 5,
                          offset: Offset(5, 10), // changes position of shadow
                        ),
                      ],
                      color: Color(0xffED831D),
                      shape: BoxShape.circle),
                ),
                TextButton(
                  child: Text(
                    'Above 50',
                    style: (GoogleFonts.montserrat(
                        fontSize: 15,
                        color: const Color(0xffFFFFFF),
                        fontWeight: FontWeight.w500)),
                  ),
                  onPressed: () async {
                    await Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const FindCardPage(),
                      ),
                    );
                  },
                ),
              ],
            ),
            const SizedBox(height: 75),
            Image.asset('assets/images/PoweredByLogo.png'),
          ],
        ),
      ),
    );
  }
}
