import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        leading: Icon(
          Icons.filter_list_outlined,
          color: Color.fromRGBO(255, 255, 255, 0.87,),size: 30,
        ),centerTitle: true,
        title: Text(
          "Index",
          style: TextStyle(
            fontSize: 20,
            fontFamily: 'Lato',
            fontWeight: FontWeight.w400,
            color: Color.fromRGBO(255, 255, 255, 0.87),
          ),
        ),

        actions: [
          Image.asset("assets/images/homescreen.png"),
          SizedBox(width: 10,)
        ],

      ),
    );
  }
}
