import 'package:gymapp/home_page.dart';
import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final double age;
  final bool gender;
  final double result;
  const Result(
      {super.key,
        required this.age,
        required this.gender,
        required this.result});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: const Color(0xff0d1232),
        appBar: AppBar(
          leading: IconButton(
              onPressed: () {
                Navigator.pop(context,
                    MaterialPageRoute(builder: (context) => const home_page()));
              },
              icon: const Icon(
                Icons.arrow_back,
                size: 35,
                color: Colors.white,
              )),
          backgroundColor: const Color(0xff0d1232),
          centerTitle: true,
          title: const Text(
            'BMI RESULT',
            style: TextStyle(
                fontSize: 30, fontWeight: FontWeight.bold, color: Colors.white),
          ),
        ),
        body: Container(
          padding: const EdgeInsets.only(top: 200),
          margin: const EdgeInsets.only(right: 10, left: 10),
          decoration: const BoxDecoration(
            color: Color(0xff0d1232),
          ),
          child: Center(
            child: Column(
              children: [
                Container(
                  alignment: Alignment.center,
                  width: 250,
                  height: 130,
                  decoration: const BoxDecoration(
                    color: Color(0xff252a48),
                  ),
                  child: Text(
                    'Gender : ${gender ? "Male" : "Female"} ',
                    style: const TextStyle(
                        color: Colors.white,
                        fontSize: 30,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                const SizedBox(
                  height: 25,
                ),
                Container(
                  alignment: Alignment.center,
                  width: 250,
                  height: 130,
                  decoration: const BoxDecoration(
                    color: Color(0xff252a48),
                  ),
                  child: Text(
                    'Result : ${result.round()} ',
                    style: const TextStyle(
                        color: Colors.white,
                        fontSize: 30,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                const SizedBox(
                  height: 25,
                ),
                Container(
                  alignment: Alignment.center,
                  width: 250,
                  height: 130,
                  decoration: const BoxDecoration(
                    color: Color(0xff252a48),
                  ),
                  child: Text(
                    'Age : ${age.round()} ',
                    style: const TextStyle(
                        color: Colors.white,
                        fontSize: 30,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
