import 'package:flutter/material.dart';

import 'auth/auth_page.dart';
import 'auth/auth_v.dart';

class Choice extends StatelessWidget {
  const Choice({super.key});

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
                  color: Color.fromARGB(255, 250, 249, 249),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(70),
                    topRight: Radius.circular(70),
                  ),
                ),
              ),
              Align(
                alignment: Alignment.center,
                child: Container(
                  width: 220,
                  height: 45,
                  margin: const EdgeInsets.only(bottom: 550),
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 215, 236, 228),
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Text(
                        "กรุณาเลือกประเภทในการใช้งาน",
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.bold,
                          color: Color.fromARGB(255, 101, 148, 31),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Align(
                alignment: Alignment.center,
                child: Container(
                  width: 320,
                  height: 130,
                  margin: const EdgeInsets.only(bottom: 330),
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 215, 236, 228),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Stack(
                    children: [
                      Positioned(
                        left: 0,
                        top: 0,
                        child: Container(
                          width: 132,
                          height: 110,
                          decoration: BoxDecoration(
                            color: const Color.fromARGB(255, 191, 206, 198),
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  const Spacer(),
                                  Image.asset(
                                    'assets/images/crossed-eye.png',
                                    width: 20,
                                    height: 20,
                                  ),
                                  const Spacer(),
                                ],
                              ),
                              const SizedBox(
                                height: 3,
                              ),
                              const Text(
                                'บุคคลที่มีลักษณะที่บกพร่องทางการด้านมองเห็นหรือผู้ที่สูญเสียการมองเห็นไปจากเดิม',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontSize: 12,
                                  color: Color.fromARGB(255, 70, 129, 98),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Positioned(
                        right: 0,
                        top: 0,
                        child: Container(
                          width: 132,
                          height: 110,
                          decoration: BoxDecoration(
                            color: const Color.fromARGB(255, 177, 206, 225),
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  const Spacer(),
                                  Image.asset(
                                    'assets/images/hand-holding-heart.png',
                                    width: 20,
                                    height: 20,
                                  ),
                                  const Spacer(),
                                ],
                              ),
                              const SizedBox(
                                height: 8,
                              ),
                              const Text(
                                'บุคคลที่มีหน้าที่หลักใน   การให้ความช่วยเหลือหรือการดูแลที่อยู่ภายใต้คำสั่งให้มีการอนุบาล',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontSize: 12,
                                  color: Color.fromARGB(255, 20, 113, 171),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const Auth()),
                  );
                },
                child: Align(
                  alignment: Alignment.center,
                  child: Container(
                    width: 360,
                    height: 200,
                    margin: const EdgeInsets.only(top: 70),
                    padding: const EdgeInsets.symmetric(
                        horizontal: 20, vertical: 10),
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 0, 255, 187),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Stack(
                      children: [
                        Positioned(
                          left: 0,
                          right: 0,
                          top: 130,
                          child: Container(
                            width: 150,
                            height: 50,
                            decoration: BoxDecoration(
                              color: const Color.fromARGB(255, 255, 255, 255),
                              borderRadius: BorderRadius.circular(40),
                              border: Border.all(
                                color: const Color.fromARGB(255, 144, 144, 144),
                                width: 2,
                              ),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: const [
                                    Spacer(),
                                    Text(
                                      'ผู้บกพร่องทางสายตา',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        fontSize: 20,
                                        color: Color.fromARGB(255, 70, 129, 98),
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    Spacer(),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                        Positioned(
                          left: 50,
                          right: 50,
                          top: 3,
                          child: Image.asset(
                            'assets/images/eye-crossed.png',
                            width: 120,
                            height: 120,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const AuthPage()),
                  );
                },
                child: Align(
                  alignment: Alignment.center,
                  child: Container(
                    width: 360,
                    height: 200,
                    margin: const EdgeInsets.only(top: 510),
                    padding: const EdgeInsets.symmetric(
                        horizontal: 20, vertical: 10),
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 207, 222, 216),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Stack(
                      children: [
                        Positioned(
                          left: 0,
                          right: 0,
                          top: 130,
                          child: Container(
                            width: 150,
                            height: 50,
                            decoration: BoxDecoration(
                              color: const Color.fromARGB(255, 171, 191, 206),
                              borderRadius: BorderRadius.circular(40),
                              border: Border.all(
                                color: const Color.fromARGB(255, 255, 255, 255),
                                width: 2,
                              ),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: const [
                                    Spacer(),
                                    Text(
                                      'ผู้อนุบาล (ผู้ดูแล)',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        fontSize: 20,
                                        color:
                                            Color.fromARGB(255, 255, 255, 255),
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    Spacer(),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                        Positioned(
                          left: 50,
                          right: 50,
                          top: 3,
                          child: Image.asset(
                            'assets/images/hand-holding.png',
                            width: 110,
                            height: 110,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Positioned(
                top: 45,
                right: 20,
                child: Image.asset(
                  "assets/images/aa.png",
                  fit: BoxFit.contain,
                  height: 55,
                  width: 55,
                ),
              ),
              Positioned(
                top: 35,
                left: 30,
                right: 0,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start, // set to start
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
