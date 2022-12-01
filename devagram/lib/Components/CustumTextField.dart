import '../Constant/colors.dart';
import 'package:flutter/material.dart';

class CustumTextField extends StatelessWidget {
  const CustumTextField({
    Key? key,
    required this.hintText,
    required this.iconPath,
    this.obscureText = false,
  }) : super(key: key);

  final hintText;
  final String iconPath;
  final obscureText;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return ConstrainedBox(
      constraints: BoxConstraints(
        minWidth: size.width,
        maxWidth: size.width,
        minHeight: 40,
        maxHeight: 40,
      ),
      child: DecoratedBox(
        decoration: const BoxDecoration(
            border: Border(bottom: BorderSide(width: 1, color: primaryColor))),
        child: TextField(
          obscureText: obscureText,
          style: const TextStyle(
            color: primaryColor,
          ),
          decoration: InputDecoration(
              prefixIcon: ImageIcon(
                AssetImage(iconPath),
                color: primaryColor,
              ),
              hintText: hintText,
              border: InputBorder.none),
        ),
      ),
    );
  }
}
