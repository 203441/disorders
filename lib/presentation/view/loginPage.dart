import 'package:disorders/presentation/view/main.dart';
import 'package:disorders/presentation/view/singUp.dart';
import 'package:flutter/material.dart';
import '../widgets/components/my_button.dart';
import '../widgets/components/my_texfield.dart';
import '../widgets/components/square_tile.dart';

class LoginPage extends StatelessWidget {
  LoginPage({Key? key});

  final usernameController = TextEditingController();
  final passwordController = TextEditingController();

  void signUserIn() {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(81, 78, 235, 50),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
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
                    'Bienvenido a Disorders',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 25,
                    ),
                  ),
                const SizedBox(height: 25),
                const Text(
                  'Inicie sesión para continuar',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 15,
                  ),
                ),
                const SizedBox(height: 30),

                Container(
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
                      const SizedBox(height: 25),
                     Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            'Correo electrónico',
                            style: TextStyle(
                              color: Color.fromARGB(255, 0, 0, 0),
                              fontSize: 15,
                            ),
                          ),
                          MyTextField(
                            controller: usernameController,
                            hintText: 'ejemplo@ejemplo.com',
                            obscureText: false,
                          ),
                        ],
                      ),
                      const SizedBox(height: 30),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            'Contraseña',
                            style: TextStyle(
                              color: Color.fromARGB(255, 0, 0, 0),
                              fontSize: 15,
                            ),
                          ),
                          MyTextField(
                            controller: passwordController,
                            hintText: '**********',
                            obscureText: true,
                          ),
                        ],
                      ),
                      const SizedBox(height: 30),
                      MyButton(
                        onTap: () {
                          signUserIn();
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => Main()),
                          );
                        },
                      ),
                      const SizedBox(height: 30),
                      const Padding(
                        padding: EdgeInsets.symmetric(horizontal: 25.0),
                        child: Row(
                          children: [
                            Expanded(
                              child: Padding(
                                padding: EdgeInsets.symmetric(horizontal: 10.0),
                                child: Text(
                                  'Continuar con',
                                  textAlign: TextAlign.center,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(height: 1),
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SquareTile(imagePath: 'lib/presentation/media/images/google.png'),
                          SizedBox(width: 5),
                        ],
                      ),
                      const SizedBox(height: 3),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text(
                            '¿No tienes cuenta?',
                            style: TextStyle(color: Color.fromRGBO(0, 0, 0, 0.808)),
                          ),
                          const SizedBox(width: 4),
                          GestureDetector(
                            onTap: () {
                              // Aquí puedes realizar la navegación a otra vista
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => SingUp()),
                              );
                            },
                            child: const Text(
                              'Regístrate aquí',
                              style: TextStyle(
                                color: Color.fromRGBO(81, 78, 235, 50),  
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ],
                      ),

                    ],
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

