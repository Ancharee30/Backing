import 'package:flutter/material.dart';
import 'package:flutter_application_14/caregiver/setting_caregiver.dart';

class Profilece extends StatelessWidget {
  const Profilece({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 157, 204, 185),
      body: Body(),
    );
  }
}

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 20 / 2),
        Expanded(
          child: Stack(
            children: [
              Container(
                margin: EdgeInsets.only(top: 220),
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 223, 248, 239),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(60),
                    topRight: Radius.circular(60),
                  ),
                ),
              ),
              Positioned(
                top: 200,
                right: 20,
                left: 20,
                child: Align(
                  alignment: Alignment.center,
                  child: GestureDetector(
                    child: Container(
                      width: 260,
                      height: 50,
                      padding:
                          EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                      decoration: BoxDecoration(
                        color: Color.fromARGB(255, 181, 216, 202),
                        borderRadius: BorderRadius.circular(30),
                        boxShadow: [
                          BoxShadow(
                            color: Color.fromARGB(255, 205, 201, 73)
                                .withOpacity(0.5),
                            offset: Offset(2, 2),
                            blurRadius: 2,
                            spreadRadius: 1,
                          ),
                        ],
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "ข้อมูลผู้บกพร่องทางสายตา",
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Color.fromARGB(255, 20, 118, 30),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              Positioned(
                top: 40,
                left: 20,
                right: 0,
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const SettingCaregiver()),
                    );
                  },
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Row(
                        children: [
                          Image.asset(
                            "assets/images/angle-left.png",
                            fit: BoxFit.contain,
                            height: 30,
                            width: 30,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                top: 30,
                right: 30,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      "assets/images/bbb.png",
                      fit: BoxFit.contain,
                      height: 60,
                      width: 60,
                    ),
                  ],
                ),
              ),
              Stack(
                children: [
                  Positioned(
                    top: 320,
                    left: 20,
                    right: 20,
                    child: Container(
                      width: 200,
                      height: 400,
                      decoration: BoxDecoration(
                        color: Color.fromARGB(255, 243, 234, 234),
                        borderRadius: BorderRadius.circular(20),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey,
                            offset: Offset(2, 2),
                            blurRadius: 5,
                            spreadRadius: 0,
                          ),
                        ],
                      ),
                    ),
                  ),
                  Positioned(
                    top: 300,
                    right: 50,
                    left: 0,
                    child: Align(
                      alignment: Alignment.center,
                      child: GestureDetector(
                        child: Container(
                          width: 250,
                          height: 60,
                          padding: EdgeInsets.symmetric(
                              horizontal: 20, vertical: 10),
                          decoration: BoxDecoration(
                            color: Color.fromARGB(255, 126, 144, 210),
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "อัญชลี ดอกสัก",
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: Color.fromARGB(255, 255, 255, 255),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    top: 355,
                    right: 0,
                    left: 20,
                    child: Align(
                      alignment: Alignment.center,
                      child: GestureDetector(
                        child: Container(
                          width: 180,
                          height: 50,
                          padding: EdgeInsets.symmetric(
                              horizontal: 20, vertical: 10),
                          decoration: BoxDecoration(
                            color: Color.fromARGB(255, 241, 240, 162),
                            borderRadius: BorderRadius.circular(30),
                            border: Border.all(
                              color: Color.fromARGB(255, 255, 255, 255),
                              width: 2,
                            ),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "ผู้ที่บกพร่องทางสายตา",
                                style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.bold,
                                  color: Color.fromARGB(255, 21, 21, 21),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    top: 80,
                    left: 20,
                    right: 20,
                    child: Image.asset(
                      "assets/images/hand.png",
                      fit: BoxFit.contain,
                      height: 110,
                      width: 110,
                    ),
                  ),
                  Positioned(
                    top: 280,
                    left: 260,
                    right: 0,
                    child: Image.asset(
                      "assets/images/eye.png",
                      fit: BoxFit.contain,
                      height: 130,
                      width: 130,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
