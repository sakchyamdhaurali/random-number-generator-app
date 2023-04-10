import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(NumGenApp());
}



class NumGenApp extends StatefulWidget {
  const NumGenApp({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _NumGenApp createState() => _NumGenApp();
}

class _NumGenApp extends State<NumGenApp> {
  int _randomNumber = 0;

  void _generateRandomNumber() {
    Random random = Random();
    setState(() {
      _randomNumber = random.nextInt(100) + 1;
    });
  }

  void resetFunction() {
    setState(() {
      _randomNumber = 0; // reset the value to 0
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      
          

      debugShowCheckedModeBanner: false,
      home: Scaffold(
        
        
        appBar: AppBar(
          title: Text('RandomNumberGenerator'),
          centerTitle: true,
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: 5,
            ),
            Center(
              child: Text(
                'Your Random Number is :',
                style: TextStyle(
                    fontSize: 30.5,
                    color: Colors.pink,
                    fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(height: 20),
            Center(
              child: Text(
                '$_randomNumber',
                style: TextStyle(
                    fontSize: 100.5,
                    color: Colors.pink,
                    fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(
              height: 40,
            ),
            ElevatedButton(
                style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.blue)),
                onPressed: _generateRandomNumber,
                child: Text(
                  "Generate a new number",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 20.5,
                      fontFamily: 'Roboto',
                      fontStyle: FontStyle.italic),
                )),
            SizedBox(
              height: 40,
            ),
            SizedBox.fromSize(
              size: Size.square(80),
              child: FloatingActionButton(
                onPressed:
                    resetFunction, // call the resetFunction when button is pressed
                tooltip: 'Reset',
                child: Icon(Icons.refresh),

                // floatingActionButton: FloatingActionButtonLocation.endFloat
              ),
            ),
            SizedBox(
              height: 90,
            ),
            Text(
              'Developed by Sakchyam Dhaurali',
              style: TextStyle(
                fontFamily: 'Roboto',
                fontSize: 18.0,
                fontWeight: FontWeight.bold,
                fontStyle: FontStyle.italic,
                color: Colors.black,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
