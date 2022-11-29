import '../Constant/colors.dart';
import 'package:flutter/material.dart';

class LoginView extends StatefulWidget {
  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return (Scaffold(
        body: Container(
      height: size.height,
      width: size.width,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset('assets/images/logo.png'),
          const Padding(
            padding: EdgeInsets.only(left: 32, top: 0, bottom: 0, right: 32),
            child: TextField(
              style: TextStyle(
                color: primaryColor,
              ),
              decoration: InputDecoration(
                  prefixIcon: ImageIcon(
                    AssetImage('assets/icons/envelope.png'),
                    color: primaryColor,
                  ),
                  hintText: "E-mail"),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(left: 32, top: 0, bottom: 0, right: 32),
            child: TextField(
              obscureText: true,
              style: TextStyle(
                color: primaryColor,
              ),
              decoration: InputDecoration(
                  prefixIcon: ImageIcon(
                    AssetImage('assets/icons/envelope.png'),
                    color: primaryColor,
                  ),
                  hintText: "Senha"),
            ),
          ),
          Padding(
            padding:
                const EdgeInsets.only(left: 32, top: 40, bottom: 0, right: 32),
            child: TextButton(
              onPressed: () {},
              style: TextButton.styleFrom(
                foregroundColor: Colors.white,
                backgroundColor: primaryColor,
                minimumSize: Size(size.width, 48),
              ),
              child: const Text('Login'),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(left: 0, top: 24, bottom: 0, right: 0),
            child: Text(
              "Não possui uma conta?",
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w400,
                color: grayColor,
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(left: 0, top: 3, bottom: 0, right: 0),
            child: Text("Faça seu cadastro agora!",
                style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                    color: primaryColor,
                    decoration: TextDecoration.underline)),
          )
        ],
      ),
    )));
  }
}
