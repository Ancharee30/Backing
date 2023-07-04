import 'package:flutter/material.dart';

import 'choice.dart';

class Language extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 14, 50, 35),
      body: Body(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => Choice()),
          );
        },
        child: Icon(Icons.arrow_forward),
        backgroundColor: Color.fromARGB(255, 1, 143, 67),
      ),
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
                margin: EdgeInsets.only(top: 100),
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 157, 204, 185),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(50),
                    topRight: Radius.circular(50),
                  ),
                ),
              ),
              Align(
                alignment: Alignment.center,
                child: Container(
                  width: 320,
                  height: 60,
                  margin: EdgeInsets.only(bottom: 450),
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    gradient: LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                      colors: [
                        Color.fromARGB(255, 171, 199, 82),
                        Color.fromARGB(255, 58, 178, 152)
                      ],
                    ),
                    border: Border.all(
                      color: Colors.white,
                      width: 2,
                    ),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "กรุณาเลือกภาษาในการใช้งาน",
                        style: TextStyle(fontSize: 24, color: Colors.white),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(bottom: 325),
                child: Container(
                  alignment: Alignment.center,
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 40),
                    child: Text(
                      "backing ยินดีให้บริการกรุณาเลือกภาษาในการใช้งานของแอปพลิเคชันเพื่อให้คุณใช้งานได้สะดวกมากยิ่งขึ้น",
                      style: TextStyle(fontSize: 15, color: Colors.white),
                    ),
                  ),
                ),
              ),
              Positioned(
                top: 15,
                left: 40,
                child: Image.asset(
                  "images/aa.png",
                  fit: BoxFit.contain,
                  height: 70,
                  width: 70,
                ),
              ),
              Positioned(
                top: 10,
                left: 120,
                right: 0,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start, // set to start
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      "images/bb.png",
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
