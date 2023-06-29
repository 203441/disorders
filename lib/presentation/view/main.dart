import 'package:disorders/presentation/view/module.dart';
import 'package:flutter/material.dart';

class Main extends StatelessWidget {
  Main({Key? key});

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
                          'Bienvenido',
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
                          'Buen día "Bemu"',
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
            const Align(
              alignment: Alignment.topLeft,
              child: Padding(
                padding: EdgeInsets.all(16.0),
                child: Text(
                  'Explorar',
                  style: TextStyle(fontSize: 22.0), // Cambia el tamaño de texto aquí
                ),
              ),
            ),
            
           Expanded(
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 6,
              itemBuilder: (BuildContext context, int index) {
                List<String> imagePaths = [
                  'lib/presentation/media/images/B1.png',
                  'lib/presentation/media/images/B2.png',
                  'lib/presentation/media/images/B3.png',
                  'lib/presentation/media/images/B4.png',
                  'lib/presentation/media/images/B5.png',
                  'lib/presentation/media/images/B6.png',
                ];
                  return GestureDetector(
                    onTap: () {
                      // Navegar a otra vista cuando se hace clic en una imagen
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Modulos()),
                      );
                    },
                    child: Padding(
                      padding: const EdgeInsets.only(left: 25.0, top: 0.0, right: 15.0, bottom: 300.0), // Ajusta los márgenes según tus necesidades
                      child: Image.asset(
                        imagePaths[index],
                        width: 175,
                        height: 250,
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}



