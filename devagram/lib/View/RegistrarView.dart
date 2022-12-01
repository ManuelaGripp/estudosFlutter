import 'package:devagram/Util/ScreenConverter.dart';

import '../Components/CustumTextField.dart';
import '../Constant/colors.dart';
import 'package:flutter/material.dart';

import 'LoginView.dart';

class RegistrarView extends StatefulWidget {
  @override
  State<RegistrarView> createState() => _RegistrarView();
}

class _RegistrarView extends State<RegistrarView> {
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
                  left: convertWidth(120, size.width),
                  top: convertHeight(60, size.height),
                  bottom: 0,
                  right: convertWidth(120, size.width)),
              child: SizedBox(
                  child: Stack(children: [
                Image.asset('assets/images/avatar.png'),
                Positioned(
                  top: convertHeight(62, size.height),
                  left: convertWidth(70, size.width),
                  child: Image.asset('assets/icons/camera.png'),
                )
              ]))),
          Padding(
            padding: EdgeInsets.only(
                left: convertWidth(32, size.width),
                top: convertHeight(48, size.height),
                bottom: 0,
                right: convertWidth(32, size.width)),
            child: const CustumTextField(
              hintText: "Nome Completo",
              iconPath: "assets/icons/user.png",
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
                left: convertWidth(32, size.width),
                top: convertHeight(24, size.height),
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
                top: convertHeight(24, size.height),
                bottom: 0,
                right: convertWidth(32, size.width)),
            child: const CustumTextField(
              obscureText: true,
              hintText: "Confirmar Senha",
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
              child: const Text('Cadastrar'),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
                left: 0,
                top: convertHeight(24, size.height),
                bottom: 0,
                right: 0),
            child: const Text(
              "Já possui uma conta?",
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
                    MaterialPageRoute(builder: (context) => LoginView()));
              },
              child: const Text("Faça seu login agora!",
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
