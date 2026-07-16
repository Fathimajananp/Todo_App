import 'package:flutter/material.dart';

class FirstOnboading extends StatefulWidget {
  const FirstOnboading({super.key});

  @override
  State<FirstOnboading> createState() => _FirstOnboadingState();
}

class _FirstOnboadingState extends State<FirstOnboading> {
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
              Image.asset("assets/images/first_onboading.png"),
              SizedBox(height: 30),
              Row(
                mainAxisAlignment: .center,
                children: [indicator(true), indicator(false), indicator(false)],
              ),
              SizedBox(height: 30,),
              Text(
                "Manage your tasks",
                style: TextStyle(
                  fontFamily: 'Lato',
                  fontWeight: FontWeight.bold,
                  fontSize: 32,
                  color: Color.fromRGBO(255, 255, 255, 0.87),
                ),
              ),
              SizedBox(height: 10,),
              Text(
                "You can easily manage all of your daily\n          tasks in DoMe for free",
                style: TextStyle(
                  fontSize: 16,
                  fontFamily: 'Lato',
                  color: Color.fromRGBO(255, 255, 255, 0.87),
                ),
              ),
              SizedBox(height: 30,),
              Row(
                mainAxisAlignment: .spaceBetween,
                children: [
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      "BACK",
                      style: TextStyle(
                        fontSize: 16,
                        fontFamily: 'Lato',
                        color: Color.fromRGBO(255, 255, 255, 0.44),
                      ),
                    ),
                  ),
                  ElevatedButton(style: ElevatedButton.styleFrom(
                    backgroundColor: Color.fromRGBO(136, 117, 255, 1),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadiusGeometry.circular(3)
                    )
                  ),
                      onPressed: (){}, child: Text("NEXT",style: TextStyle(fontSize: 16,fontFamily: 'Lato',color: Colors.white),))
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
      width: active ? 28 : 10,
      height: 6,
      decoration: BoxDecoration(
        color: active ? Colors.white : Colors.grey.shade700,
        borderRadius: BorderRadius.circular(10),
      ),
    );
  }
}
