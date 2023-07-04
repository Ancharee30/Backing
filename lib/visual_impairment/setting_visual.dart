import 'package:flutter/material.dart';
import 'package:flutter_application_14/visual_impairment/profile_hand.dart';
import 'package:flutter_application_14/visual_impairment/profile_visual.dart';

import '../choice.dart';
import 'home_visual.dart';

class SettingVisual extends StatelessWidget {
  const SettingVisual({super.key});

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
                margin: const EdgeInsets.only(top: 150),
                decoration: const BoxDecoration(
                  color: Color.fromARGB(255, 223, 248, 239),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(60),
                    topRight: Radius.circular(60),
                  ),
                ),
              ),
              Positioned(
                top: 120,
                right: 20,
                left: 20,
                child: Align(
                  alignment: Alignment.center,
                  child: GestureDetector(
                    child: Container(
                      width: 170,
                      height: 50,
                      padding: const EdgeInsets.symmetric(
                          horizontal: 20, vertical: 10),
                      decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 167, 189, 132),
                        borderRadius: BorderRadius.circular(30),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          Text(
                            "การตั้งค่า",
                            style: TextStyle(
                              fontSize: 22,
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
                          const SizedBox(width: 15),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: const [
                              Text(
                                "Back",
                                style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                    color: Color.fromARGB(255, 5, 134, 56)),
                              ),
                              SizedBox(height: 4),
                              Text(
                                "ผู้บกพร่องทางสายตา",
                                style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.normal,
                                  color: Color.fromARGB(255, 0, 0, 0),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Stack(
                children: [
                  Positioned(
                    top: 200,
                    left: 20,
                    right: 20,
                    child: Container(
                      width: 200,
                      height: 350,
                      decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 255, 255, 255),
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                  ),
                  Positioned(
                    top: 280,
                    left: 40,
                    right: 40,
                    child: Container(
                      width: 50,
                      height: 130,
                      decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 228, 236, 229),
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                  ),
                  Positioned(
                    top: 220,
                    left: 0,
                    right: 190,
                    child: Image.asset(
                      "assets/images/eye.png",
                      fit: BoxFit.contain,
                      height: 160,
                      width: 160,
                    ),
                  ),
                  Positioned(
                    top: 340,
                    left: 50,
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => ProfilecVisual()),
                        );
                      },
                      child: Container(
                        width: 45,
                        height: 45,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(22.5),
                          boxShadow: [
                            BoxShadow(
                              color: const Color.fromARGB(255, 205, 201, 73)
                                  .withOpacity(0.5),
                              spreadRadius: 1,
                              blurRadius: 3,
                            ),
                          ],
                        ),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(22.5),
                          child: Image.asset(
                            "assets/images/handx.png",
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    top: 350,
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
                            color: const Color.fromARGB(255, 146, 215, 112),
                            borderRadius: BorderRadius.circular(30),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: const [
                              Text(
                                "ข้อมูลส่วนตัว",
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: Color.fromARGB(255, 7, 114, 41),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    top: 445,
                    right: 50,
                    left: 50,
                    child: Align(
                      alignment: Alignment.center,
                      child: GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => ProfileHand()),
                          );
                        },
                        child: Container(
                          width: 500,
                          height: 50,
                          padding: const EdgeInsets.symmetric(
                              horizontal: 20, vertical: 10),
                          decoration: BoxDecoration(
                            color: const Color.fromARGB(255, 197, 231, 201),
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
                            children: [
                              Image.asset(
                                "assets/images/eye-crossed.png",
                                fit: BoxFit.contain,
                                height: 30,
                                width: 30,
                              ),
                              const SizedBox(width: 10),
                              const Text(
                                "ข้อมูลผู้อนุบาล / ผู้ดูแล",
                                style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                  color: Color.fromARGB(255, 44, 146, 51),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    top: 520,
                    right: 50,
                    left: 50,
                    child: Align(
                      alignment: Alignment.center,
                      child: InkWell(
                        onTap: () {
                          showDialog(
                            context: context,
                            builder: (context) => AlertDialog(
                              title: const Text("backing logout !"),
                              content:
                                  const Text("คุณต้องการออกจากระบบใช่หรือไม่?"),
                              actions: [
                                TextButton(
                                  onPressed: () => Navigator.pop(context),
                                  child: const Text("ยกเลิก"),
                                ),
                                TextButton(
                                  onPressed: () {
                                    Navigator.pop(context);
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => const Choice()),
                                    );
                                  },
                                  child: const Text("ยืนยัน"),
                                ),
                              ],
                            ),
                          );
                        },
                        child: Container(
                          width: 500,
                          height: 50,
                          padding: const EdgeInsets.symmetric(
                              horizontal: 20, vertical: 10),
                          decoration: BoxDecoration(
                            color: const Color.fromARGB(255, 206, 30, 30),
                            borderRadius: BorderRadius.circular(30),
                            boxShadow: [
                              const BoxShadow(
                                color: Colors.grey,
                                offset: Offset(-2, -2),
                                blurRadius: 5,
                                spreadRadius: 1,
                              ),
                              BoxShadow(
                                color: const Color.fromARGB(255, 205, 152, 73)
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
                                "assets/images/exit.png",
                                fit: BoxFit.contain,
                                height: 30,
                                width: 30,
                              ),
                              const SizedBox(width: 10),
                              const Text(
                                "ออกจากระบบการใช้งาน",
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
