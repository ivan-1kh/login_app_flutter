import 'package:flutter/material.dart';

class LoginTextField extends StatefulWidget {
  final bool passwordField;

  const LoginTextField({
    Key? key,
    required this.passwordField,
  }) : super(key: key);

  @override
  _LoginTextFieldState createState() => _LoginTextFieldState();
}

/*
        TextField(
          decoration: const InputDecoration(
              border: UnderlineInputBorder(), labelText: 'Enter your username'),
          obscureText: widget.passwordField,
        ),
        IconButton(
          icon: const Icon(Icons.remove_red_eye_rounded),
          tooltip: 'Show characters',
          onPressed: () {},
        ),
 */

class _LoginTextFieldState extends State<LoginTextField> {
  @override
  Widget build(BuildContext context) {
    bool showPassword = widget.passwordField;

    if (widget.passwordField) {
      return Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Stack(
            children: [
              Container(
                width: 300,
                child: TextField(
                  decoration: InputDecoration(
                      border: UnderlineInputBorder(),
                      labelText: 'Enter your password'),
                  obscureText: showPassword,
                ),
              ),
              Positioned(
                right: 0,
                bottom: 0,
                child: IconButton(
                  icon: const Icon(Icons.remove_red_eye),
                  tooltip: 'Show password',
                  onPressed: () {
                    showPassword = false;
                    setState(() {});
                  },
                ),
              ),
            ],
          )
        ],
      );
    } else {
      return Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            width: 300,
            child: TextField(
              decoration: InputDecoration(
                  border: UnderlineInputBorder(),
                  labelText: 'Enter your username'),
              obscureText: widget.passwordField,
            ),
          ),
        ],
      );
    }
  }
}
