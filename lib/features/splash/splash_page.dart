import 'package:flutter/material.dart';
import 'package:unasp_fome/features/splash/login/login_page.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    // Use um temporizador (por exemplo, Future.delayed) para simular um tempo de espera
    Future.delayed(Duration(seconds: 3), () {
      // Após o tempo definido, navegue para a HomePage
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => LoginPage()),
      );
    });
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [Colors.white, Color.fromARGB(255, 253, 237, 226)])
      ),
      child: SizedBox(
        width: 200.0,
        height: 300.0,
        child: Image.asset('assets/imagens/logo.png'),
      ),
    );
  }
}