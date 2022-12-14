import 'package:devagram/Util/ScreenConverter.dart';
import 'package:devagram/View/RegistrarView.dart';

import '../Components/CustumTextField.dart';
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
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Padding(
              padding: EdgeInsets.only(
                  left: convertWidth(32, size.width),
                  top: convertHeight(133, size.height),
                  bottom: 0,
                  right: convertWidth(32, size.width)),
              child: Image.asset('assets/images/logo.png')),
          Padding(
            padding: EdgeInsets.only(
                left: convertWidth(32, size.width),
                top: convertHeight(56, size.height),
                bottom: 0,
                right: convertWidth(32, size.width)),
            child: const CustumTextField(
              hintText: "E-mail",
              iconPath: "assets/icons/envelope.png",
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
                left: convertWidth(32, size.width),
                top: convertHeight(24, size.height),
                bottom: 0,
                right: convertWidth(32, size.width)),
            child: const CustumTextField(
              obscureText: true,
              hintText: "Senha",
              iconPath: "assets/icons/key.png",
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
                left: convertWidth(32, size.width),
                top: convertHeight(40, size.height),
                bottom: 0,
                right: convertWidth(32, size.width)),
            child: TextButton(
              onPressed: () {},
              style: TextButton.styleFrom(
                textStyle: TextStyle(
                    fontSize: convertHeight(16, size.height),
                    fontWeight: FontWeight.w600),
                foregroundColor: Colors.white,
                backgroundColor: primaryColor,
                minimumSize: Size(size.width, convertHeight(48, size.height)),
              ),
              child: const Text('Login'),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
                left: 0,
                top: convertHeight(24, size.height),
                bottom: 0,
                right: 0),
            child: const Text(
              "N??o possui uma conta?",
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w400,
                color: grayColor,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
                left: 0,
                top: convertHeight(3, size.height),
                bottom: 0,
                right: 0),
            child: InkWell(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => RegistrarView()));
              },
              child: const Text("Fa??a seu cadastro agora!",
                  style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                      color: primaryColor,
                      decoration: TextDecoration.underline)),
            ),
          )
        ],
      ),
    )));
  }
}
