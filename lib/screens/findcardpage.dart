import 'package:flutter/material.dart';
import 'package:getleadscratchcard/screens/scratchcardpage.dart';
import 'package:google_fonts/google_fonts.dart';

class FindCardPage extends StatefulWidget {
  const FindCardPage({Key? key}) : super(key: key);

  @override
  _FindCardPageState createState() => _FindCardPageState();
}

class _FindCardPageState extends State<FindCardPage> {
  final _controllername = TextEditingController();
  final _controllermobile = TextEditingController();
  final _controllerbill = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //resizeToAvoidBottomInset: false,
        body: SafeArea(
            child: SingleChildScrollView(
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
                    const SizedBox(height: 15),
                    Center(
                      child: Text('Find your',
                style: (GoogleFonts.poppins(
                    fontSize: 15,
                    color: const Color(0xff454545),
                    fontWeight: FontWeight.w500))),
                    ),
                    Center(
                      child: Text('Scratch Card',
                style: (GoogleFonts.poppins(
                    fontSize: 25,
                    color: const Color(0xff454545),
                    fontWeight: FontWeight.w600))),
                    ),
                    const SizedBox(height: 15),
                    Align(
                      alignment: FractionalOffset(0.2, 0.6),
                      child: Text("Name",
                //textAlign: TextAlign.left,
                style: (GoogleFonts.poppins(
                    fontSize: 10, color: Color(0xffB6B6B6)))),
                    ),
                    const SizedBox(height: 3),
                    Container(
                      height: 40,
                      width: 250,
                      decoration: BoxDecoration(
              color: Color(0xffF5F5F5),
              borderRadius: BorderRadius.circular(32),
                      ),
                      child: TextFormField(
                //obscureText: true,
                cursorColor: Color(0xff696969),
                controller: _controllername,
                style:
                    (GoogleFonts.poppins(fontSize: 10, color: Color(0xff696969))),
                decoration: const InputDecoration(
                  border: InputBorder.none,
                  labelStyle: TextStyle(fontSize: 10),
                  contentPadding: EdgeInsets.fromLTRB(12, 2, 10, 8),
                ),
                validator: (String? value) {
                  if (value == null || value.isEmpty) {
                    return 'Required';
                  }
                }),
                    ),
                    const SizedBox(height: 8),
                    Align(
                      alignment: FractionalOffset(0.2, 0.6),
                      child: Text("Mobile",
                textAlign: TextAlign.left,
                style: (GoogleFonts.poppins(
                    fontSize: 10, color: Color(0xffB6B6B6)))),
                    ),
                    const SizedBox(height: 3),
                    Container(
                      height: 40,
                      width: 250,
                      decoration: BoxDecoration(
              color: Color(0xffF5F5F5),
              borderRadius: BorderRadius.circular(32),
                      ),
                      child: TextFormField(
                //obscureText: true,
                cursorColor: Color(0xff696969),
                controller: _controllermobile,
                style:
                    (GoogleFonts.poppins(fontSize: 10, color: Color(0xff696969))),
                decoration: const InputDecoration(
                  border: InputBorder.none,
                  labelStyle: TextStyle(fontSize: 10),
                  contentPadding: EdgeInsets.fromLTRB(12, 2, 10, 8),
                ),
                validator: (String? value) {
                  if (value == null || value.isEmpty) {
                    return 'Required';
                  }
                }),
                    ),
                    const SizedBox(height: 8),
                    Align(
                      alignment: FractionalOffset(0.2, 0.6),
                      child: Text("Bill Number",
                //textAlign: TextAlign.left,
                style: (GoogleFonts.poppins(
                    fontSize: 10, color: Color(0xffB6B6B6)))),
                    ),
                    const SizedBox(height: 3),
                    Container(
                      height: 40,
                      width: 250,
                      decoration: BoxDecoration(
              color: Color(0xffF5F5F5),
              borderRadius: BorderRadius.circular(32),
                      ),
                      child: TextFormField(
                //obscureText: true,
                cursorColor: Color(0xff696969),
                controller: _controllerbill,
                style:
                    (GoogleFonts.poppins(fontSize: 10, color: Color(0xff696969))),
                decoration: const InputDecoration(
                  border: InputBorder.none,
                  //labelText: 'Bill Number',
                  labelStyle: TextStyle(fontSize: 10),
                  contentPadding: EdgeInsets.fromLTRB(12, 2, 10, 8),
                ),
                validator: (String? value) {
                  if (value == null || value.isEmpty) {
                    return 'Required';
                  }
                }),
                    ),
                    const SizedBox(height: 15),
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
                        Color(0xffFF5733),
                        Color(0xffFF3649),
                      ],
                    ),
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
                TextButton(
                  child: Text(
                    'Submit',
                    style: (GoogleFonts.poppins(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    )),
                  ),
                  onPressed: () async {
                    await Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const ScratchCardPage(),
                      ),
                    );
                  },
                ),
              ],
                      ),
                    ),
                    SizedBox(height : 15),
            
                    //SizedBox(height : 30, child :
                    Image.asset('assets/images/PoweredByLogo.png') 
                    //)
                  ],
                ),
            )));
  }
}
