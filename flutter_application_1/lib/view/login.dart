import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(39, 39, 39, 1),
      body: Column(
        children: const [TitleWidget(), FormWidget()],
      ),
    );
  }
}

class TitleWidget extends StatelessWidget {
  const TitleWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.only(top: 110, left: 20),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Image.asset('assets/overchainIcon.png'),
          const Padding(
            padding: EdgeInsets.only(top: 15),
            child: Text(
              "Preencha os campos e cadastre-se! ",
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 22),
            ),
          ),
          Row(
            children: [
              const Text("Já possui cadastro?",
                  style: TextStyle(color: Colors.white)),
              TextButton(
                  onPressed: () => null,
                  child: const Text("Acesse sua conta",
                      style: TextStyle(
                        color: Color.fromRGBO(255, 211, 44, 1),
                      ))),
            ],
          ),
        ]));
  }
}

class FormWidget extends StatelessWidget {
  const FormWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Column(
        children: [
          Container(
            decoration: BoxDecoration(
                border: Border.all(color: Colors.white),
                borderRadius: BorderRadius.circular(8),
                color: const Color.fromRGBO(70, 70, 70, 1)),
            child: const TextField(
                decoration: InputDecoration(
              icon: Padding(
                padding: EdgeInsets.only(left: 10),
                child: Icon(Icons.person_outline, color: Colors.grey),
              ),
              hintText: "Nome Completo",
              hintStyle: TextStyle(color: Colors.grey),
            )),
          ),
        ],
      ),
    );
  }
}
