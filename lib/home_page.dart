import 'dart:math';
import 'package:gymapp/result.dart';
import 'package:flutter/material.dart';

class home_page extends StatefulWidget {
  const home_page({super.key});

  @override
  State<home_page> createState() => _HomePageState();
}

class _HomePageState extends State<home_page> {
  bool selected = false;
  double weightValue = 30;
  double ageValue = 10;
  double height = 80;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff0d1232),
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: const Color(0xff0d1232),
        title: const Text(
          'BMI CALCULATOR',
          style: TextStyle(
              color: Colors.white, fontSize: 30, fontWeight: FontWeight.bold),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          margin: const EdgeInsets.all(10),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap: () => setState(() {
                      selected = true;
                    }),
                    child: Container(
                      height: 150,
                      width: 200,
                      decoration: BoxDecoration(
                          color: selected ? Colors.blue : const Color(0xff252a48),
                          borderRadius: BorderRadius.circular(15)),
                      child: const Center(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            SizedBox(height: 20),
                            Image(
                              image: AssetImage('images/male-gender.png'),
                              color: Colors.white,
                              width: 60,
                              height: 60,
                            ),
                            SizedBox(height: 7),
                            Text(
                              'MALE',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 24,
                                  fontWeight: FontWeight.bold),
                            ),
                            SizedBox(height: 20),
                          ],
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(width: 25),
                  GestureDetector(
                    onTap: () => setState(() {
                      selected = false;
                    }),
                    child: Container(
                      height: 150,
                      width: 200,
                      decoration: BoxDecoration(
                          color: selected ? const Color(0xff252a48) : Colors.blue,
                          borderRadius: BorderRadius.circular(15)),
                      child: const Center(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            SizedBox(height: 20),
                            Image(
                              image: AssetImage('images/femenine.png'),
                              color: Colors.white,
                              width: 60,
                              height: 60,
                            ),
                            SizedBox(height: 7),
                            Text(
                              'FEMALE',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 24,
                                  fontWeight: FontWeight.bold),
                            ),
                            SizedBox(height: 20),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              Container(
                padding: const EdgeInsets.only(top: 30),
                width: double.infinity,
                height: 270,
                decoration: BoxDecoration(
                    color: const Color(0xff252a48),
                    borderRadius: BorderRadius.circular(15)),
                child: Column(
                  children: [
                    const Text(
                      'HEIGHT',
                      style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                    const SizedBox(height: 30),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.baseline,
                      textBaseline: TextBaseline.alphabetic,
                      children: [
                        Text(
                          '${height.round()}',
                          style: const TextStyle(
                              color: Colors.white,
                              fontSize: 72,
                              fontWeight: FontWeight.bold),
                        ),
                        const Text(
                          ' cm',
                          style: TextStyle(
                              fontSize: 26,
                              color: Colors.white,
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                    Slider(
                      max: 300.0,
                      min: 0.0,
                      value: height,
                      onChanged: (val) {
                        setState(() {
                          height = val;
                        });
                      },
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    padding: const EdgeInsets.only(top: 40),
                    height: 250,
                    width: 200,
                    decoration: BoxDecoration(
                        color: const Color(0xff252a48),
                        borderRadius: BorderRadius.circular(15)),
                    child: Column(
                      children: [
                        const Text(
                          'WEIGHT',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 24,
                              fontWeight: FontWeight.bold),
                        ),
                        const SizedBox(height: 30),
                        Text(
                          '${weightValue.round()}',
                          style: const TextStyle(
                              fontSize: 48,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                        Row(
                          children: [
                            Container(
                              margin: const EdgeInsets.only(left: 25),
                              decoration: BoxDecoration(
                                  color: const Color(0xff0d1232),
                                  borderRadius: BorderRadius.circular(50)),
                              width: 50,
                              height: 50,
                              child: IconButton(
                                onPressed: () {
                                  setState(() {
                                    weightValue = weightValue + 1;
                                  });
                                },
                                icon: const Icon(
                                  Icons.add,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                            const SizedBox(width: 50),
                            Container(
                              decoration: BoxDecoration(
                                  color: const Color(0xff0d1232),
                                  borderRadius: BorderRadius.circular(50)),
                              width: 50,
                              height: 50,
                              child: IconButton(
                                onPressed: () {
                                  setState(() {
                                    weightValue--;
                                  });
                                },
                                icon: const Icon(
                                  Icons.remove,
                                  color: Colors.white,
                                ),
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                  const SizedBox(width: 25),
                  Container(
                    padding: const EdgeInsets.only(top: 40),
                    height: 250,
                    width: 200,
                    decoration: BoxDecoration(
                        color: const Color(0xff252a48),
                        borderRadius: BorderRadius.circular(15)),
                    child: Column(
                      children: [
                        const Text(
                          'AGE',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 24,
                              fontWeight: FontWeight.bold),
                        ),
                        const SizedBox(height: 30),
                        Text(
                          '${ageValue.round()}',
                          style: const TextStyle(
                              fontSize: 48,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                        Row(
                          children: [
                            Container(
                              margin: const EdgeInsets.only(left: 25),
                              decoration: BoxDecoration(
                                  color: const Color(0xff0d1232),
                                  borderRadius: BorderRadius.circular(50)),
                              width: 50,
                              height: 50,
                              child: IconButton(
                                onPressed: () {
                                  setState(() {
                                    ageValue++;
                                  });
                                },
                                icon: const Icon(
                                  Icons.add,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                            const SizedBox(width: 50),
                            Container(
                              decoration: BoxDecoration(
                                  color: const Color(0xff0d1232),
                                  borderRadius: BorderRadius.circular(50)),
                              width: 50,
                              height: 50,
                              child: IconButton(
                                onPressed: () {
                                  setState(() {
                                    ageValue--;
                                  });
                                },
                                icon: const Icon(
                                  Icons.remove,
                                  color: Colors.white,
                                ),
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 25),
              GestureDetector(
                onTap: () {
                  double result = weightValue / pow(height / 100, 2);
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Result(
                        age: ageValue,
                        gender: selected,
                        result: result,
                      ),
                    ),
                  );
                },
                child: Container(
                  height: 80,
                  decoration: BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadius.circular(15)),
                  child: const Center(
                    child: Text(
                      'Check Your BMI',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 24,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}