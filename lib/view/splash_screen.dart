import 'package:flutter/material.dart';
import 'package:todo_app/view/first_onboading.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Future.delayed(Duration(seconds: 3)).then((_){
       Navigator.push(context, MaterialPageRoute(builder: (context)=>FirstOnboading()));

    });
    // TODO: implement initState
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Column(mainAxisAlignment: .center,
          children: [
            Image.asset("assets/images/uptodo.png"),
            SizedBox(height: 10,),
            Text(
              "UpTodo",
              style: TextStyle(
                fontSize: 40,
                fontFamily: 'Lato',
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
