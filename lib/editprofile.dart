import 'package:flutter/material.dart';
import 'package:job_seeker_/components/custom_button.dart';
import 'package:job_seeker_/components/inputs.dart';

class EditProfile extends StatelessWidget {
  const EditProfile({super.key, required this.label, required this.labelText});

  final String label;
  final String labelText;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromARGB(255, 236, 239, 241),
        appBar: AppBar(
          backgroundColor: Color(0xFF291150),
          title: Text(
            'Edit ' + label,
            style: TextStyle(color: Colors.white, fontSize: 17),
          ),
          iconTheme: IconThemeData(color: Colors.white),
        ),
        body: SafeArea(
            child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 30),
                child: Text(
                  'Change ' + label,
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w900),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 2),
                child: Text(
                  'Type in the input below and click on save to\nchange your' +
                      label,
                  style: TextStyle(),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20, bottom: 8),
                child: Text(
                  label,
                ),
              ),
              InputsBox(placeholder: labelText),
              SizedBox(
                height: 50,
              ),
              Expanded(
                  child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Container(
                      child: CustomButton(buttonText: 'Save', onPress: () {})),
                ],
              ))
            ],
          ),
        )));
  }
}
