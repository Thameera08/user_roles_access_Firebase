// ignore_for_file: prefer_const_constructors, sort_child_properties_last
import 'package:common_login_ui/register.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class StartPage extends StatelessWidget {
  const StartPage({super.key}); // Corrected constructor definition

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand, // Make the stack fill the entire screen
        children: [
          // Background Image
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('lib/images/load.png'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          // Content Centered in a Column
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(
                            right: 100, left: 100, top: 20),
                        child: Divider(
                          color: HexColor('B42318'),
                          thickness: 10,
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Text(
                        'WELCOME TO',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 25,
                        ),
                      ),
                      Image.asset(
                        'lib/images/logo.png',
                        width: 100,
                      ),
                      Spacer(),
                      ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          backgroundColor: HexColor('#B42318'),
                          minimumSize: Size(200, 50),
                          elevation: 10,
                        ),
                        child: Text(
                          'Student LogIn',
                          style: TextStyle(
                            fontSize: 20,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      const SizedBox(height: 10),
                      ElevatedButton(
                        onPressed: () {
                          Navigator.of(context).pushReplacement(
                            MaterialPageRoute(
                              builder: (context) => Register(),
                            ),
                          );
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.white,
                          minimumSize: Size(200, 50),
                          elevation: 10,
                        ),
                        child: Text(
                          'Admin LogIn',
                          style: TextStyle(
                            fontSize: 20,
                            color: Colors.red,
                          ),
                        ),
                      ),
                      SizedBox(height: 20),
                    ],
                  ),
                  width: 342,
                  height: 343,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
                const SizedBox(height: 30),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
