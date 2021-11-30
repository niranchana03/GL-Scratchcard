import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:scratcher/scratcher.dart';
import 'package:confetti/confetti.dart';

class ScratchCardPage extends StatefulWidget {
  const ScratchCardPage({Key? key}) : super(key: key);

  @override
  _ScratchCardPageState createState() => _ScratchCardPageState();
}

class _ScratchCardPageState extends State<ScratchCardPage> {
  late ConfettiController _controller;

  @override
  void initState() {
    super.initState();
    _controller = ConfettiController(duration: const Duration(seconds: 10));
  }

  @override
  Widget build(BuildContext context) {
    var screensize = MediaQuery.of(context).size;
    double sheight = screensize.height;
    double swidth = screensize.width;
    return Scaffold(
      body: SafeArea(
        bottom: false,
        right: false,
        left: false,
        child: Center(
          child: Column(
            children: [

              Row(children: [
                  IconButton(
                    icon: const Icon(Icons.arrow_back, color : Color(0xff858585)),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                  ),
                  const SizedBox(width: 60),
                  Container(
                    height: 30,
                  ),
                ]),
              SizedBox(height: sheight / 4.3),
              
              Container(
                height: 200,
                width: 200,
                child: ClipOval(
                  child: Scratcher(
                      brushSize: 30,
                      threshold: 70,
                      image: Image.asset('assets/images/ScratchHere.png'),
                      onChange: (value) => print("Scratch progress: $value%"),
                      onThreshold: () {
                        //_controller.play();
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const ChickenBurgerScreen()),
                        );
                      },
                      child: Container(
                          decoration: const BoxDecoration(
                              shape: BoxShape.circle, color: Color(0xffFF3748)))

                      //Image.asset('assets/images/YellowWinCoupon.png'),

                      ),
                ),
              ),
              SizedBox(height: sheight / 4.1),
              Image.asset('assets/images/PoweredByLogo.png')
            ],
          ),
        ),
      ),
    );
  }
}

class ChickenBurgerScreen extends StatefulWidget {
  const ChickenBurgerScreen({Key? key}) : super(key: key);

  @override
  _ChickenBurgerScreenState createState() => _ChickenBurgerScreenState();
}

class _ChickenBurgerScreenState extends State<ChickenBurgerScreen> {
  late ConfettiController _controller;

  @override
  void initState() {
    super.initState();
    _controller = ConfettiController(duration: const Duration(seconds: 10));
    _controller.play();
  }

  @override
  Widget build(BuildContext context) {
    var screensize = MediaQuery.of(context).size;
    double sheight = screensize.height;
    double swidth = screensize.width;
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Center(
            child: Column(
              children: [
                Row(children: [
                  IconButton(
                    icon: const Icon(Icons.arrow_back,color : Color(0xff858585)),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                  ),
                  const SizedBox(width: 60),
                  Container(
                    height: 30,
                  ),
                ]),
                SizedBox(height: sheight / 20),
                Text(
                  'Congratulations! ',
                  style: (GoogleFonts.poppins(
                      fontSize: 18,
                      color: const Color(0xff454545),
                      fontWeight: FontWeight.w500)),
                ),
                Text(
                  'You have won',
                  style: (GoogleFonts.poppins(
                      fontSize: 30,
                      color: const Color(0xff454545),
                      fontWeight: FontWeight.w600)),
                ),
                SizedBox(height: sheight / 20),
                ConfettiWidget(
                  confettiController: _controller,
                  blastDirectionality: BlastDirectionality.explosive,
                  particleDrag: 0.05, // apply drag to the confetti
                  emissionFrequency: 0.05, // how often it should emit
                  numberOfParticles: 5, // number of particles to emit
                  gravity: 0.05, // don't specify a direction, blast randomly
                  shouldLoop:
                      false, // start again as soon as the animation is finished
                  colors: const [
                    Colors.green,
                    Colors.blue,
                    Colors.pink,
                    Colors.orange,
                    Colors.purple
                  ],
                ),
                Stack(alignment: Alignment.center, children: [
                  Container(height : 200, width : 200, child: Image.asset('assets/images/RedCoupon.png')),
                  Container(height : 100, width : 100, child: Image.asset('assets/images/Burger.png'))
                ]),
                SizedBox(height: sheight / 10),
                Text('Chicken Zinger Burger',
                    style: (GoogleFonts.poppins(
                        fontSize: 16,
                        color: const Color(0xff454545),
                        fontWeight: FontWeight.w600))),
                SizedBox(height: sheight / 8),
                Image.asset('assets/images/PoweredByLogo.png')
              ],
            ),
          ),
        ),
      ),
    );
  }
}
