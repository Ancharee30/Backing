import 'package:flutter/material.dart';

import 'choice.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 6), () {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (_) => const Choice()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 199, 250, 230),
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
                margin: const EdgeInsets.only(top: 300),
                decoration: const BoxDecoration(
                  color: Color.fromARGB(255, 39, 244, 162),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(500),
                  ),
                ),
              ),
              Transform.scale(
                scale: 0.8,
                child: Align(
                  alignment: Alignment.center,
                  child: Image.asset(
                    "assets/images/aa.png",
                  ),
                ),
              ),
              Positioned(
                top: 420,
                left: 0,
                right: 0,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Transform.scale(
                      scale: 0.4,
                      child: Image.asset(
                        "assets/images/aaa.png",
                      ),
                    ),
                  ],
                ),
              ),
              Positioned(
                bottom: 175,
                left: 0,
                right: 0,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const SizedBox(height: 10),
                    Container(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: const Text(
                        "แอปพลิเคชันสำหรับผู้บกพร่องทางสายตา",
                        style: TextStyle(color: Colors.black, fontSize: 18),
                        textAlign: TextAlign.center,
                      ),
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
