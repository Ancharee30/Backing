import 'package:flutter/material.dart';

import 'home_visual.dart';

class WarningVisual extends StatelessWidget {
  const WarningVisual({super.key});

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
                margin: const EdgeInsets.only(top: 110),
                decoration: const BoxDecoration(
                  color: Color.fromARGB(255, 223, 248, 239),
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(70),
                  ),
                ),
              ),
              Positioned(
                top: 90,
                right: 80,
                child: Align(
                  alignment: Alignment.center,
                  child: GestureDetector(
                    child: Container(
                      width: 220,
                      height: 50,
                      padding: const EdgeInsets.symmetric(
                          horizontal: 20, vertical: 10),
                      decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 255, 255, 255),
                        borderRadius: BorderRadius.circular(30),
                        boxShadow: [
                          BoxShadow(
                            color: const Color.fromARGB(255, 163, 163, 162)
                                .withOpacity(0.5),
                            offset: const Offset(2, 2),
                            blurRadius: 2,
                            spreadRadius: 1,
                          ),
                        ],
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(
                            "assets/images/bell-l.png",
                            fit: BoxFit.contain,
                            height: 30,
                            width: 30,
                          ),
                          const SizedBox(width: 5),
                          const Text(
                            "การแจ้งเตือน",
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Color.fromARGB(255, 201, 148, 1),
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
                          builder: (context) => const HomeVisual()),
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
            ],
          ),
        ),
      ],
    );
  }
}
