// ignore_for_file: use_key_in_widget_constructors

import 'package:disorders/presentation/view/singUp.dart';
import 'package:disorders/presentation/widgets/components/button_register.dart';
import 'package:flutter/material.dart';
import '../widgets/components/button_homepage.dart';
import 'loginPage.dart';

class HomePage extends StatelessWidget {
  HomePage({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(81, 78, 235, 50),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.min, // Ajustar al tamaño mínimo verticalmente
              children: [
                const SizedBox(height: 50),
                const SizedBox(
                  width: 237,
                  height: 237,
                  child: CircleAvatar(
                    backgroundColor: Colors.transparent,
                    backgroundImage: AssetImage('lib/presentation/media/images/logo.png'),
                    radius: 220,
                  ),
                ),
                const SizedBox(height: 5),
                const Text(
                  'Disorders',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 25,
                  ),
                ),
                const SizedBox(height: 20),
                const Text(
                  'Un camino hacia la atención plena',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                  ),
                ),
                const SizedBox(height: 246),
                Flexible(
                  child: Container(
                    width: double.infinity,
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(50),
                        topRight: Radius.circular(50),
                      ),
                    ),
                    padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 35),
                    child: Column(
                      children: [
                        SizedBox(
                          child: MyButtonH(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => LoginPage()),
                              );
                            },  
                          ),
                        ),
                        const SizedBox(height: 50),
                        SizedBox(
                          child: MyButtonR(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => SingUp()),
                              );
                            },
                          ),
                        ),
                      ],
                    ),
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

