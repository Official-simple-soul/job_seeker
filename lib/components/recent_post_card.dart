import 'package:flutter/material.dart';
import 'package:job_seeker_/pages/applypage.dart';
import 'package:job_seeker_/components/custom_button.dart';
import 'package:job_seeker_/components/slideup.dart';
// ignore: must_be_immutable
class RecentPostCard extends StatefulWidget {
  RecentPostCard(
      {Key? key,
      required this.companyLogo,
      required this.jobTitle,
      required this.jobType,
      required this.salary,
      required this.companyName,
      required this.location})
      : super(key: key);

  final String companyLogo;
  final String jobTitle;
  final String jobType;
  final String salary;
  final String companyName;
  final String location;

  @override
  State<RecentPostCard> createState() => _RecentPostCardState();
}

class _RecentPostCardState extends State<RecentPostCard> {
  int idx = 1;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: 20),
      child: GestureDetector(
        onTap: () {
          slider(context, widget, idx);
        },
        child: Container(
          height: 80,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Colors.white,
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  width: 50,
                  decoration: BoxDecoration(
                    image:
                        DecorationImage(image: AssetImage(widget.companyLogo)),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          widget.jobTitle,
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                          ),
                        ),
                        Text(widget.jobType),
                      ],
                    ),
                  ),
                ),
                Container(
                  width: 60,
                  child: Text(widget.salary),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}


