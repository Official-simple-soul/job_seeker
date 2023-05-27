import 'package:flutter/material.dart';

class InputsBox extends StatefulWidget {
  InputsBox({super.key, this.icon, this.icon2, this.icon3, required this.placeholder});

  final IconData? icon;
  final IconData? icon2;
  final IconData? icon3;
  final String placeholder;

  @override
  State<InputsBox> createState() => _InputsBoxState();
}

class _InputsBoxState extends State<InputsBox> {
  bool _togglePasswordShow = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(vertical: 8),
          child: TextField(
            obscureText: !_togglePasswordShow?true:false,
            decoration: InputDecoration(
              border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide.none),
              hintText: widget.placeholder,
              filled: true,
              fillColor: Colors.white,
              contentPadding:
                  EdgeInsets.symmetric(vertical: 16, horizontal: 16),

              prefixIcon: widget.icon != null
                  ? Container(
                      padding: EdgeInsets.all(12),
                      child: Icon(widget.icon),
                    )
                  : null,

              suffixIcon: GestureDetector(
                onTap: () {
                  setState(() {
                    _togglePasswordShow = !_togglePasswordShow;
                  });
                },
                child: Icon(
                  _togglePasswordShow? widget.icon2:widget.icon3,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}

// void setState(Null Function() param0) {}
