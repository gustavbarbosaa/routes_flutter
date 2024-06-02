import 'package:app_terceira_nota/modules/authentication/auth.controller.dart';
import 'package:app_terceira_nota/routers/router.dart';
import 'package:flutter/material.dart';

class AutheticationPage extends StatefulWidget {
  const AutheticationPage({super.key});

  @override
  State<AutheticationPage> createState() => _AutheticationPageState();
}

class _AutheticationPageState extends State<AutheticationPage> {
  _showMessageError() {
    showDialog(
      context: context,
      builder: (context) => const AlertDialog(
        content: Text("Verifique o campo de email"),
      ),
    );
  }

  TextEditingController _emailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text("Autenticação"),
        ),
        body: Center(
          child: Column(
            children: [
              TextField(
                controller: _emailController,
                decoration: const InputDecoration(
                  label: Text("Email"),
                ),
              ),
              const TextField(
                obscureText: true,
                decoration: InputDecoration(label: Text("Senha")),
              ),
              ElevatedButton(
                  onPressed: () {
                    AuthController authController = AuthController();

                    bool status =
                        authController.validarEmail(_emailController.text);

                    if (status) {
                      Navigator.pushReplacementNamed(
                          context, RoutersUtil.HOMEPAGE);
                    } else {
                      _showMessageError();
                    }
                  },
                  child: const Text("Entrar"))
            ],
          ),
        ),
      ),
    );
  }
}
