import 'package:disorders/presentation/view/module.dart';
import 'package:disorders/presentation/widgets/components/button_info.dart';
import 'package:disorders/presentation/widgets/components/button_module.dart';
import 'package:flutter/material.dart';

class Estrategias extends StatelessWidget {
  Estrategias({Key? key});


  void signUserIn() {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: [
            const SizedBox(height: 0),
            Container(
              width: double.infinity,
              height: 171,
              decoration: const BoxDecoration(
                color: Color.fromRGBO(81, 78, 235, 50),
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(40),
                  bottomRight: Radius.circular(40),
                ),
              ),
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 35),
              child: const Column(
                children: [
                  Column(
                    children: [
                      Align(
                        alignment: Alignment.topLeft,
                        child: Text(
                          'Estrategias',
                          style: TextStyle(
                            color: Color.fromARGB(255, 255, 255, 255),
                            fontSize: 22,
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 15),
                  Column(
                    children: [
                      Align(
                        alignment: Alignment.topLeft,
                        child: Text(
                          'Estrategias',
                          style: TextStyle(
                            color: Color.fromARGB(255, 255, 255, 255),
                            fontSize: 22,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(height: 30),
            
            
          ],
        ),
      ),
    );
  }
}
