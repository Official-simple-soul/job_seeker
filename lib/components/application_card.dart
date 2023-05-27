import 'package:flutter/material.dart';

class ApplicationCard extends StatelessWidget {
  const ApplicationCard(
      {super.key,
      required this.companyLogo,
      required this.companyName,
      required this.jobTitle,
      required this.location,
      required this.status,
      required this.salary});

  final String companyLogo;
  final String companyName;
  final String jobTitle;
  final String location;
  final String status;
  final String salary;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Container(
        height: 150,
        decoration: BoxDecoration(
            color: Colors.white, borderRadius: BorderRadius.circular(10)),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(children: [
            Row(
              children: [
                Container(
                  width: 50,
                  height: 50,
                  decoration: BoxDecoration(
                      image: DecorationImage(image: AssetImage(companyLogo))),
                ),
                Column(
                  children: [
                    Text(companyName),
                    Text(jobTitle),
                    Text(location),
                  ],
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  color: Colors.lightBlue,
                  child: Text(status),
                ),
                Text(salary)
              ],
            )
          ]),
        ),
      ),
    );
  }
}
