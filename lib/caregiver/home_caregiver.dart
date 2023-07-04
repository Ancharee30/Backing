import 'package:flutter/material.dart';
import 'package:flutter_application_14/caregiver/warning.dart';

class HomeCaregiver extends StatelessWidget {
  const HomeCaregiver({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 157, 204, 185),
      body: Body(),
    );
  }
}

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 20 / 2),
        Expanded(
          child: Stack(
            children: [
              Container(
                margin: const EdgeInsets.only(top: 270),
                decoration: const BoxDecoration(
                  color: Color.fromARGB(255, 223, 248, 239),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(70),
                    topRight: Radius.circular(70),
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => HomeCaregiver()),
                  );
                },
                child: Align(
                  alignment: Alignment.center,
                  child: Container(
                    margin: const EdgeInsets.only(top: 100),
                    padding:
                        const EdgeInsets.symmetric(horizontal: 0, vertical: 0),
                    decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          blurRadius: 5,
                        ),
                      ],
                    ),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: Image.asset(
                        "assets/images/aa.jpg",
                        width: 370,
                        height: 230,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
              ),
              Positioned(
                top: 540,
                right: 50,
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => HomeCaregiver()),
                    );
                  },
                  child: Image.asset(
                    "assets/images/aaaaa.png",
                    fit: BoxFit.contain,
                    height: 90,
                    width: 90,
                  ),
                ),
              ),
              Positioned(
                top: 130,
                right: 80,
                left: 80,
                child: GestureDetector(
                  child: Image.asset(
                    "assets/images/aa.png",
                    fit: BoxFit.contain,
                    height: 180,
                    width: 180,
                  ),
                ),
              ),
              Positioned(
                top: 255,
                left: 120,
                right: 0,
                child: Image.asset(
                  "assets/images/hand.png",
                  fit: BoxFit.contain,
                  height: 45,
                  width: 45,
                ),
              ),
              Positioned(
                top: 310,
                right: 80,
                left: 80,
                child: Align(
                  alignment: Alignment.center,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Text(
                        "อัญชลี ดอกสัก",
                        style: TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                          color: Color.fromARGB(255, 9, 116, 34),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                top: 640,
                right: 70,
                left: 70,
                child: Align(
                  alignment: Alignment.center,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Text(
                        "การแจ้งเตือนเหตุฉุกเฉิน",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Color.fromARGB(255, 177, 153, 13),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                top: 680,
                right: 20,
                left: 20,
                child: Align(
                  alignment: Alignment.center,
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => WarningCaregiver()),
                      );
                    },
                    child: Container(
                      width: 400,
                      height: 55,
                      padding: const EdgeInsets.symmetric(
                          horizontal: 20, vertical: 10),
                      decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 214, 211, 171),
                        borderRadius: BorderRadius.circular(30),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(
                            "assets/images/bell.png",
                            fit: BoxFit.contain,
                            height: 30,
                            width: 30,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              Positioned(
                top: 40,
                right: 25,
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => HomeCaregiver()),
                    );
                  },
                  child: Image.asset(
                    "assets/images/aaaa.png",
                    fit: BoxFit.contain,
                    height: 55,
                    width: 55,
                  ),
                ),
              ),
              Positioned(
                top: 30,
                left: 30,
                right: 0,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      "assets/images/bbb.png",
                      fit: BoxFit.contain,
                      height: 70,
                      width: 70,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
