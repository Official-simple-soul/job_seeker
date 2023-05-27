import 'package:flutter/material.dart';
import 'package:job_seeker_/components/slideup.dart';

class PopularJobCard extends StatefulWidget {
  const PopularJobCard(
      {super.key,
      required this.companyLogo,
      required this.companyName,
      required this.jobTitle,
      required this.location,
      required this.jobType,
      required this.salary});

  final String companyName;
  final String companyLogo;
  final String jobTitle;
  final String salary;
  final String location;
  final String jobType;

  @override
  State<PopularJobCard> createState() => _PopularJobCardState();
}

class _PopularJobCardState extends State<PopularJobCard> {
  @override
  Widget build(BuildContext context) {

int idx = 1;


    return Padding(
      padding: const EdgeInsets.only(right: 20),
      child: GestureDetector(
        onTap: () {
         slider(context, widget, idx,);
        },
        child: Container(
          width: 250,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15), color: Colors.white),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        width: 40,
                        height: 40,
                        decoration: BoxDecoration(
                            image:
                                DecorationImage(image: AssetImage(widget.companyLogo))),
                      ),
                      SizedBox(
                        height: 3,
                      ),
                      Text(
                        widget.companyName,
                        style: TextStyle(fontSize: 12),
                      )
                    ],
                  ),
                  GestureDetector(
                    child: Icon(
                      Icons.favorite_outline,
                      color: Colors.black,
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Text(widget.jobTitle),
              SizedBox(
                height: 7,
              ),
              Row(
                children: [
                  Text(widget.salary, style: TextStyle(fontWeight: FontWeight.w700)),
                  SizedBox(
                    width: 10,
                  ),
                  Text(widget.location),
                ],
              )
            ]),
          ),
        ),
      ),
    );
  }
}
