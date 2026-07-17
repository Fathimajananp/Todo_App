import 'package:flutter/material.dart';
import 'package:todo_app/view/start_screen.dart';

class ThirdOnboading extends StatefulWidget {
  const ThirdOnboading({super.key});

  @override
  State<ThirdOnboading> createState() => _ThirdOnboadingState();
}

class _ThirdOnboadingState extends State<ThirdOnboading> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        leading: Align(
          alignment: Alignment.bottomCenter,
          child: Text(
            "SKIP",
            style: TextStyle(
              fontSize: 16,
              color: Color.fromRGBO(255, 255, 255, 0.44),
              fontFamily: 'Lato',
            ),
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Center(
          child: Column(
            children: [
              Image.asset("assets/images/third_onboading.png"),
              SizedBox(height: 30),
              Row(
                mainAxisAlignment: .center,
                children: [indicator(false), indicator(false), indicator(true)],
              ),
              SizedBox(height: 30),
              Text(
                "Orgonaize your tasks",
                style: TextStyle(
                  fontFamily: 'Lato',
                  fontWeight: FontWeight.bold,
                  fontSize: 32,
                  color: Color.fromRGBO(255, 255, 255, 0.87),
                ),
              ),
              SizedBox(height: 10),
              Text(
                "     You can organize your daily tasks by \nadding your tasks into separate categories",
                style: TextStyle(
                  fontSize: 16,
                  fontFamily: 'Lato',
                  color: Color.fromRGBO(255, 255, 255, 0.87),
                ),
              ),
              SizedBox(height: 30),
              Row(
                mainAxisAlignment: .spaceBetween,
                children: [
                  TextButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: Text(
                      "BACK",
                      style: TextStyle(
                        fontSize: 16,
                        fontFamily: 'Lato',
                        color: Color.fromRGBO(255, 255, 255, 0.44),
                      ),
                    ),
                  ),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color.fromRGBO(136, 117, 255, 1),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadiusGeometry.circular(3),
                      ),
                    ),
                    onPressed: () {
                       Navigator.push(context, MaterialPageRoute(builder: (context) => StartScreen()),);
                    },
                    child: Text(
                      "GET STARTED",
                      style: TextStyle(
                        fontSize: 16,
                        fontFamily: 'Lato',
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  static Widget indicator(bool active) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 4),
      width: active ? 25 : 25,
      height: 6,
      decoration: BoxDecoration(
        color: active ? Colors.white : Colors.grey.shade700,
        borderRadius: BorderRadius.circular(10),
      ),
    );
  }
}

