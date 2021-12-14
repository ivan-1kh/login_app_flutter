import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class LoginTextField extends StatefulWidget {
  final bool passwordField;

  const LoginTextField({
    Key? key,
    required this.passwordField,
  }) : super(key: key);

  @override
  _LoginTextFieldState createState() => _LoginTextFieldState();
}

class _LoginTextFieldState extends State<LoginTextField> {
  TextEditingController txtbdy = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    int maxCharacters = 200;
    bool showPassword = widget.passwordField;

    return Container(
      height: 300,
      child: Stack(
        children: [
          TextField(
            inputFormatters: [
              LengthLimitingTextInputFormatter(200),
            ],
            onChanged: (v) {
              setState(() {});
            },
            controller: txtbdy,
            decoration: InputDecoration(
                hintText: "Body",
                focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(15)),
                    borderSide: BorderSide(color: Colors.black, width: 2)),
                enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(15)),
                    borderSide: BorderSide(color: Colors.black, width: 2))),
            textAlignVertical: TextAlignVertical.top,
            expands: true,
            maxLines: null,
          ),
          Align(
            alignment: Alignment.topRight,
            child: Padding(
              padding: EdgeInsets.all(0),
              child: IconButton(
                icon: Icon(Icons.clear),
                onPressed: () {
                  txtbdy.text = "";
                },
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomRight,
            child: Container(
              child: Padding(
                padding: EdgeInsets.all(16.0),
                child: Text(txtbdy.text.length.toString() +
                    '/' +
                    maxCharacters.toString()),
              ),
            ),
          )
        ],
      ),
    );
  }
}
