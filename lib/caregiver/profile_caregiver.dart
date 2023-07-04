import 'package:flutter/material.dart';
import 'package:flutter_application_14/caregiver/home_caregiver.dart';
import 'package:flutter_application_14/caregiver/setting_caregiver.dart';

class Profilec extends StatelessWidget {
  const Profilec({super.key});

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
                margin: const EdgeInsets.only(top: 250),
                decoration: const BoxDecoration(
                  color: Color.fromARGB(255, 223, 248, 239),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(60),
                    topRight: Radius.circular(60),
                  ),
                ),
              ),
              Positioned(
                top: 225,
                right: 20,
                left: 20,
                child: Align(
                  alignment: Alignment.center,
                  child: GestureDetector(
                    child: Container(
                      width: 230,
                      height: 50,
                      padding: const EdgeInsets.symmetric(
                          horizontal: 20, vertical: 10),
                      decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 200, 238, 223),
                        borderRadius: BorderRadius.circular(30),
                        boxShadow: [
                          BoxShadow(
                            color: const Color.fromARGB(255, 205, 201, 73)
                                .withOpacity(0.5),
                            offset: const Offset(2, 2),
                            blurRadius: 2,
                            spreadRadius: 1,
                          ),
                        ],
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          Text(
                            "ข้อมูลส่วนตัว",
                            style: TextStyle(
                              fontSize: 20,
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
                      height: 420,
                      decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 255, 255, 255),
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                  ),
                  Positioned(
                    top: 70,
                    left: 20,
                    right: 20,
                    child: Image.asset(
                      "assets/images/hand.png",
                      fit: BoxFit.contain,
                      height: 140,
                      width: 140,
                    ),
                  ),
                  Positioned(
                    top: 300,
                    right: 50,
                    left: 50,
                    child: Align(
                      alignment: Alignment.center,
                      child: GestureDetector(
                        child: Container(
                          width: 310,
                          height: 70,
                          padding: const EdgeInsets.symmetric(
                              horizontal: 20, vertical: 10),
                          decoration: BoxDecoration(
                            color: const Color.fromARGB(255, 126, 210, 186),
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: const [
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
                    top: 360,
                    right: 0,
                    left: 140,
                    child: Align(
                      alignment: Alignment.center,
                      child: GestureDetector(
                        child: Container(
                          width: 180,
                          height: 50,
                          padding: const EdgeInsets.symmetric(
                              horizontal: 20, vertical: 10),
                          decoration: BoxDecoration(
                            color: const Color.fromARGB(255, 162, 217, 241),
                            borderRadius: BorderRadius.circular(30),
                            border: Border.all(
                              color: const Color.fromARGB(255, 255, 255, 255),
                              width: 2,
                            ),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: const [
                              Text(
                                "ผู้อนุบาล (ผู้ดูลแล)",
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
                    top: 710,
                    right: 0,
                    left: 190,
                    child: Align(
                      alignment: Alignment.center,
                      child: GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const HomeCaregiver()),
                          );
                        },
                        child: Container(
                          width: 150,
                          height: 50,
                          padding: const EdgeInsets.symmetric(
                              horizontal: 20, vertical: 10),
                          decoration: BoxDecoration(
                            color: const Color.fromARGB(255, 133, 188, 119),
                            borderRadius: BorderRadius.circular(30),
                            boxShadow: [
                              const BoxShadow(
                                color: Colors.grey,
                                offset: Offset(-2, -2),
                                blurRadius: 5,
                                spreadRadius: 1,
                              ),
                              BoxShadow(
                                color: const Color.fromARGB(255, 205, 201, 73)
                                    .withOpacity(0.5),
                                offset: const Offset(2, 2),
                                blurRadius: 2,
                                spreadRadius: 1,
                              ),
                            ],
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: const [
                              SizedBox(width: 10),
                              Text(
                                "แก้ไขข้อมูล",
                                style: TextStyle(
                                  fontSize: 18,
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
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
