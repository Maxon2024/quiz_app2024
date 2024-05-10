import 'dart:math';

import 'package:flutter/material.dart';
import 'package:quiz_app/models/questions.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int index = 0;
  List bardykjooptor = [];
  List tuurajooptor = [];
  List katajooptor = [];

  teksher(bool value) {
    setState(() {});
    if (answers[index].joop == value) {
      bardykjooptor.add(value);
      tuurajooptor.add(value);
    } else {
      bardykjooptor.add(value);
      katajooptor.add(value);
    }
    index++;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: const Text(
          'Суроо жана Жооп',
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                answers[index].suroo,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 40,
                ),
              ),
              const SizedBox(height: 140),
              SizedBox(
                width: double.infinity,
                height: 50,
                child: ElevatedButton(
                  onPressed: () {
                    teksher(true);
                    // log(bardykjooptor.toString());
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.green,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  child: const Text(
                    'Туура',
                    style: TextStyle(fontSize: 20, color: Colors.white),
                  ),
                ),
              ),
              const SizedBox(height: 25),
              SizedBox(
                width: double.infinity,
                height: 50,
                child: ElevatedButton(
                  onPressed: () {
                    teksher(false);
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.red,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  child: const Text(
                    'Туура эмес',
                    style: TextStyle(fontSize: 20, color: Colors.white),
                  ),
                ),
              ),
              const SizedBox(height: 120),
              const Row(
                children: [
                  Icon(
                    Icons.check,
                    color: Colors.green,
                    size: 36,
                  ),
                  Icon(
                    Icons.close,
                    color: Colors.red,
                    size: 36,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
