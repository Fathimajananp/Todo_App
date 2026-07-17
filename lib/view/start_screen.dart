import 'package:flutter/material.dart';
import 'package:todo_app/view/login_screen.dart';

class StartScreen extends StatefulWidget {
  const StartScreen({super.key});

  @override
  State<StartScreen> createState() => _StartScreenState();
}

class _StartScreenState extends State<StartScreen> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios_new,color: Colors.white),
          onPressed: (){
            Navigator.pop(context);
          },
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Center(
          child: Column(
            children: [
              SizedBox(height: height * 0.07),
              Text(
                "Welcome to UpTodo",
                style: TextStyle(
                  fontSize: 32,
                  fontFamily: 'Lato',
                  fontWeight: FontWeight.bold,
                  color: Color.fromRGBO(255, 255, 255, 0.87),
                ),
              ),
              SizedBox(height: height * 0.04),
              Text(
                "Please login to your account or create \n         new account to continue",
                style: TextStyle(
                  fontSize: 16,
                  fontFamily: 'Lato',
                  color: Color.fromRGBO(255, 255, 255, 0.67),
                ),
              ),
              SizedBox(height: height * 0.35),
              SizedBox(
                height: height * 0.07,
                width: MediaQuery.of(context).size.width,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    // fixedSize: Size(800, 50),
                    backgroundColor: Color.fromRGBO(136, 117, 255, 1),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(3),
                    ),
                  ),
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => LoginScreen()));
                  },
                  child: Text(
                    "LOGIN",
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.white,
                      fontFamily: 'Lato',
                    ),
                  ),
                ),
              ),
              SizedBox(height: height*0.03,),
              SizedBox(
                height: height * 0.07,
                width: MediaQuery.of(context).size.width,
                child: ElevatedButton(style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.black,
                  side: BorderSide(color: Color.fromRGBO(142, 124, 255, 1)),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(3),

                  )
                ),
                  onPressed: () {},
                  child: Text(
                    "CREATE ACCOUNT",
                    style: TextStyle(
                      fontSize: 16,
                      fontFamily: 'Lato',
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
