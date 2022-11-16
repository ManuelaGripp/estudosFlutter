import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(39, 39, 39, 1),
      body: SingleChildScrollView(
          child: Column(
        children: const [
          TitleWidget(),
          FormWidget(),
          RegistrationConfirmButton()
        ],
      )),
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
        child: Column(children: [
          UserFormInput(
            iconData: Icons.person_outline,
            hintText: 'Nome Completo',
          ),
          UserFormInput(
            iconData: Icons.mail_outline,
            hintText: 'Digite seu e-mail',
          ),
          UserFormInput(
            hintText: '(00) 9 1234-5678',
          ),
          UserPasswordInput(
            hintText: 'Digite sua senha',
          ),
          UserPasswordInput(
            hintText: 'Confirme sua senha',
          ),
        ]));
  }
}

class UserFormInput extends StatelessWidget {
  UserFormInput({
    super.key,
    this.iconData,
    required this.hintText,
  });

  late IconData? iconData;
  final String hintText;

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.symmetric(vertical: 10),
        child: Container(
          decoration: BoxDecoration(
              border: Border.all(color: Colors.white),
              borderRadius: BorderRadius.circular(8),
              color: const Color.fromRGBO(70, 70, 70, 1)),
          child: TextField(
              decoration: InputDecoration(
            border: InputBorder.none,
            icon: iconData != null
                ? Padding(
                    padding: const EdgeInsets.only(left: 15),
                    child: Icon(iconData, color: Colors.grey),
                  )
                : const Padding(padding: EdgeInsets.zero),
            hintText: hintText,
            hintStyle: const TextStyle(color: Colors.grey),
          )),
        ));
  }
}

// ignore: must_be_immutable
class UserPasswordInput extends StatefulWidget {
  UserPasswordInput({super.key, this.iconData, required this.hintText});

  late IconData? iconData;
  final String hintText;

  @override
  State<UserPasswordInput> createState() => _UserPasswordInputState();
}

class _UserPasswordInputState extends State<UserPasswordInput> {
  late bool isObscure = true;

  void _togglePasswordView() {
    setState(() {
      isObscure = !isObscure;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.symmetric(vertical: 10),
        child: Container(
          decoration: BoxDecoration(
              border: Border.all(color: Colors.white),
              borderRadius: BorderRadius.circular(8),
              color: const Color.fromRGBO(70, 70, 70, 1)),
          child: TextField(
              obscureText: isObscure,
              decoration: InputDecoration(
                border: InputBorder.none,
                icon: widget.iconData != null
                    ? Padding(
                        padding: const EdgeInsets.only(left: 15),
                        child: Icon(widget.iconData, color: Colors.grey),
                      )
                    : const Padding(padding: EdgeInsets.zero),
                suffixIcon: IconButton(
                    onPressed: () => _togglePasswordView(),
                    icon: Icon(
                      isObscure
                          ? Icons.visibility_outlined
                          : Icons.visibility_off_outlined,
                      color: Colors.grey,
                    )),
                hintText: widget.hintText,
                hintStyle: const TextStyle(color: Colors.grey),
              )),
        ));
  }
}

class RegistrationConfirmButton extends StatelessWidget {
  const RegistrationConfirmButton({super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {},
      style: ElevatedButton.styleFrom(
          backgroundColor: const Color.fromRGBO(39, 39, 39, 1),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(10))),
      child: const Text('Send'),
    );
  }
}
